using Intern_MVC.Models;
using Intern_MVC.ViewModels;
using System.Collections;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Intern_MVC.Controllers
{
    public class LeaveController : Controller
    {
        public ActionResult Index()
        {
            List<Leave> leaves = Leave.GetAllLeaves();
            List<LeaveViewModel> models = new List<LeaveViewModel>();

            foreach (Leave leave in leaves)
            {
                models.Add(new LeaveViewModel(leave));
            }

            return View(models);
        }

        public ActionResult Create()
        {
            return View(new LeaveViewModel());
        }

        [HttpPost]
        public ActionResult Create(LeaveViewModel model)
        {
            if (ModelState.IsValid)
            {
                Leave leave = new Leave(model);
                Leave.AddOrUpdateLeave(leave);
                return RedirectToAction("Index");
            }
            return View(model);
        }

        public ActionResult View(int id)
        {
            Leave leave = Leave.GetLeaveById(id);
            return View(new LeaveViewModel(leave));
        }

        public ActionResult Edit(int id)
        {
            Leave leave = Leave.GetLeaveById(id);
            return View(new LeaveViewModel(leave));
        }

        [HttpPost]
        public ActionResult Edit(LeaveViewModel model)
        {
            if (ModelState.IsValid)
            {
                Leave leave = new Leave(model);
                Leave.AddOrUpdateLeave(leave);
                return RedirectToAction("Index");
            }
            return View(model);
        }

        
        public ActionResult Delete(int id)
        {
            Leave leave = Leave.GetLeaveById(id);
            return View(new LeaveViewModel(leave));
        }

       
        [HttpPost]
        public ActionResult DeleteConfirmed(int id)
        {
            Leave.DeleteLeave(id);
            return RedirectToAction("Index");
        }
    }
}