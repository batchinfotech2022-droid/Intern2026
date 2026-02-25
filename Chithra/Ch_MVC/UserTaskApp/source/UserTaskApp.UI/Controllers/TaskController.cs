using System;
using System.Collections.Generic;
using System.Linq;

using System.Web;
using System.Web.Mvc;
using UserTaskApp.BL;
using UserTaskApp.UI.Models;


namespace UserTaskApp.UI.Controllers
{
    public class TaskController : Controller
    {


        public ActionResult Index()
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            var list = TaskApp.RetrieveAll(usrName);

            var model = list.Select(x => new TaskModel(x)).ToList();

            return View(model);
        }
        public ActionResult Create()
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            // Load users for AssignedTo dropdown
            var users = AppUser.RetrieveAll(usrName);

            ViewBag.Users = users.Select(u => new SelectListItem
            {
                Value = u.UserName,
                Text = u.UserName
            }).ToList();

            ViewBag.StatusList = new[]
            {
            new SelectListItem { Text="New", Value="New"},
            new SelectListItem { Text="In Progress", Value="In Progress"},
            new SelectListItem { Text="Testing", Value="Testing"},
            new SelectListItem { Text="Done", Value="Done"}
        };

            return View(new TaskModel());
        }

        // POST: Task/Create
        [HttpPost]

        public ActionResult Create(TaskModel model)
        {
            if (!ModelState.IsValid)
            {
                Create();
                return View(model);
            }

            string usrName = Session["UserName"]?.ToString() ?? "System";

            model.CreatedDate = DateTime.Now;
            model.ModifiedDate = DateTime.Now;

            TaskApp.Create(
                usrName,
                model.Title,
                model.Description,
                model.AssignedTo,
                model.Status

            );

            return RedirectToAction("Index");
        }
        public ActionResult Edit(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            var task = TaskApp.RetrieveById(usrName, id);

            // USERS dropdown
            var users = AppUser.RetrieveAll(usrName);
            ViewBag.Users = users.Select(u => new SelectListItem
            {
                Value = u.UserName,
                Text = u.UserName
            }).ToList();

            // STATUS dropdown
            ViewBag.StatusList = new[]
            {
        new SelectListItem { Text="New", Value="New"},
        new SelectListItem { Text="In Progress", Value="In Progress"},
        new SelectListItem { Text="Testing", Value="Testing"},
        new SelectListItem { Text="Done", Value="Done"}
    };

            return View(new TaskModel(task));
        }
        [HttpPost]
        public ActionResult Edit(TaskModel model)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            var task = TaskApp.RetrieveById(usrName, model.Id);

            model.CreatedDate = task.CreatedDate;
            model.CreatedBy = task.CreatedBy;

            if (!ModelState.IsValid)
            {
                Edit(model.Id);
                return View(model);
            }

            task.Title = model.Title;
            task.Description = model.Description;
            task.AssignedTo = model.AssignedTo;
            task.Status = model.Status;

            task.ModifiedBy = usrName;
            task.ModifiedDate = DateTime.Now;

            task.Update(usrName);

            return RedirectToAction("Index");
        }


        public ActionResult Details(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            var task = TaskApp.RetrieveById(usrName, id);

            return View(new TaskModel(task));
        }


        public ActionResult Delete(int? id)
        {
            if (id == null)
                return RedirectToAction("Index");

            string usrName = Session["UserName"]?.ToString() ?? "System";

            TaskApp task = TaskApp.RetrieveById(usrName, id.Value);

            if (task == null)
                return HttpNotFound();

            TaskModel model = new TaskModel
            {
                Id = task.Id,
                Title = task.Title,
                Description = task.Description,
                AssignedTo = task.AssignedTo,
                Status = task.Status,
                CreatedBy = task.CreatedBy,
                CreatedDate = task.CreatedDate,
                ModifiedBy = task.ModifiedBy,
                ModifiedDate = task.ModifiedDate,
                IsDeleted = task.IsDeleted
            };

            return View(model);
        }
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            TaskApp.Delete(usrName, id);

            return RedirectToAction("Index");
        }
    }
    }


 