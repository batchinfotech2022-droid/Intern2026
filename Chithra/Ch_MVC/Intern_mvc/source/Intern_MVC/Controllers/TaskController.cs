using Intern_MVC.Models;
using Intern_MVC.ViewModels;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Intern_MVC.Controllers
{
    public class TaskController : Controller
    {
        // GET: Task
       
        public ActionResult Index()
        {

            List<Tasks> tasks = Tasks.GetAllTasks();
            List<TaskViewModel> Model = new List<TaskViewModel>();
            foreach (Tasks task in tasks)
            {
                TaskViewModel model = new TaskViewModel(task);
                Model.Add(model);

            }
            IEnumerable values = Model;

            return View(values);
        }
        public ActionResult Create()
        {
            TaskViewModel Model= new TaskViewModel();

            return View(Model);
        }
        [HttpPost]
        public ActionResult Create(TaskViewModel newModel)
        {
            if (ModelState.IsValid)
            {

                Tasks task = new Tasks(newModel);
                newModel.Id = 20;
                Tasks.AddOrUpdateTask(task);
                TempData["toastr-success"] = "Employee created successfully";
                return RedirectToAction("Index");
            }
            if (!ModelState.IsValid)
            {
                TempData["toastr-error"] = "Please fill all required fields";

            }
            return RedirectToAction("Create");
        }
        public ActionResult View(int id)
        {
            Tasks task = Tasks.GetTaskById(id);
            TaskViewModel model = new TaskViewModel(task);
            return View(model);
        }
        public ActionResult Edit(int id)
        {
            Tasks task = Tasks.GetTaskById(id);
            TaskViewModel model = new TaskViewModel(task);

            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(TaskViewModel model)
        {
            if (ModelState.IsValid)
            {
                Tasks task = Tasks.GetTaskById(model.Id);

              
                task.Title = model.Title;
                task.Description = model.Description;
                task.IsActive = model.IsActive;

                
                Tasks.AddOrUpdateTask(task);

                return RedirectToAction("Index");
            }

            return View(model);
        }
        // GET: Tasks/Delete/5

        public ActionResult Delete(int id)
        {
            Tasks task = Tasks.GetTaskById(id);
            TaskViewModel model = new TaskViewModel(task);
            return View(model);
        }


        // POST: Tasks/Delete/5
        [HttpPost]
        public ActionResult DeleteConfirmed(int id)
        {
            bool isDeleted = Tasks.DeleteTask(id);

            // optional: you can check result if needed
            if (!isDeleted)
            {
                return HttpNotFound();
            }

            return RedirectToAction("Index");
        }




    }

}