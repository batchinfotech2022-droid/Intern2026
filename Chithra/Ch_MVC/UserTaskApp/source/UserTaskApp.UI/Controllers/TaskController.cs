using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


using BLTask = UserTaskApp.BL.Task;  
using UserTaskApp.UI.Models;

namespace UserTaskApp.UI.Controllers
{
    public class TaskController : Controller
    {
        string usrName = "Admin";

        // GET: Task
        public ActionResult Index()
        {
            List<BLTask> list = BLTask.RetrieveAll(usrName);
            List<TaskModel> model = list.Select(x => new TaskModel(x)).ToList();
            return View(model);
        }

        // GET: Task/Create
        public ActionResult Create()
        {
            return View(new TaskModel());
        }

        // POST: Task/Create
        [HttpPost]
        public ActionResult Create(TaskModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    BLTask.Create(usrName, model.Title, model.Description, model.AssignedTo, model.Status);
                    return RedirectToAction("Index");
                }
                return View(model);
            }
            catch
            {
                return View(model);
            }
        }

        // GET: Task/Edit/5
        public ActionResult Edit(int id)
        {
            BLTask task = BLTask.RetrieveById(usrName, id);
            return View(new TaskModel(task));
        }

        // POST: Task/Edit
        [HttpPost]
        public ActionResult Edit(TaskModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    model.Task.Update(usrName);
                    return RedirectToAction("Index");
                }
                return View(model);
            }
            catch
            {
                return View(model);
            }
        }

        // GET: Task/Details/5
        public ActionResult Details(int id)
        {
            BLTask task = BLTask.RetrieveById(usrName, id);
            return View(new TaskModel(task));
        }

        // GET: Task/Delete/5
        public ActionResult Delete(int id)
        {
            BLTask task = BLTask.RetrieveById(usrName, id);
            return View(new TaskModel(task));
        }

        // POST: Task/Delete
        [HttpPost]
        public ActionResult DeleteConfirmed(int id)
        {
            BLTask.Delete(usrName, id);
            return RedirectToAction("Index");
        }
    }
}
