using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InternLAapp.UI.Controllers
{
    public class LeaveController : Controller
    {
        public ActionResult Index()
        {
            return View(GetLeaveModelList());
        }

        private IEnumerable<LeaveModel> GetLeaveModelList()
        {
            List<LeaveModel> list = new List<LeaveModel>();
            foreach (Leave l in Leave.RetrieveAll("System"))
            {
                list.Add(new LeaveModel(l));
            }
            return list.OrderBy(l => l.Id);
        }

        public ActionResult Create()
        {
            return View(new LeaveModel());
        }

        [HttpPost]
        public ActionResult Create(LeaveModel model)
        {
            if (ModelState.IsValid)
            {
                model.Create("System");
                return RedirectToAction("Index");
            }
            return View(model);
        }

        public ActionResult Details(int id)
        {
            Leave l = Leave.RetrieveById("System", id);
            return View(new LeaveModel(l));
        }

        public ActionResult Edit(int id)
        {
            Leave l = Leave.RetrieveById("System", id);
            return View(new LeaveModel(l));
        }

        [HttpPost]
        public ActionResult Edit(LeaveModel model)
        {
            if (ModelState.IsValid)
            {
                model.Update("System");
                return RedirectToAction("Index");
            }
            return View(model);
        }

        public ActionResult Delete(int id)
        {
            Leave l = Leave.RetrieveById("System", id);
            return View(new LeaveModel(l));
        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            Leave.Delete("System", id);
            return RedirectToAction("Index");
        }
    }
}