using System;
using System.Linq;
using System.Web.Mvc;
using InternLAApp.BL;
using InternLAApp.UI.Models;

namespace InternLAApp.UI.Controllers
{
    public class LeaveController : Controller
    {
        string usrName = "Admin";

        public ActionResult Index()
        {
            var data = Leave.RetrieveAll()
                            .Select(x => new LeaveModel { Leave = x })
                            .ToList();

            return View(data);
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
                model.CreatedBy = usrName;
                model.CreatedDate = DateTime.Now;
                model.ModifiedBy = usrName;
                model.ModifiedDate = DateTime.Now;
                model.IsDeleted = false;

             
                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Edit(int id)
        {
            var data = Leave.RetrieveAll().FirstOrDefault(x => x.Id == id);
            return View(new LeaveModel { Leave = data });
        }

        [HttpPost]
        public ActionResult Edit(LeaveModel model)
        {
            if (ModelState.IsValid)
            {
                model.ModifiedBy = usrName;
                model.ModifiedDate = DateTime.Now;

                model.Leave.Update();

                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Delete(int id)
        {
            var data = Leave.RetrieveAll().FirstOrDefault(x => x.Id == id);
            return View(new LeaveModel { Leave = data });
        }

        [HttpPost]
        public ActionResult DeleteConfirmed(int id)
        {
            var data = Leave.RetrieveAll().FirstOrDefault(x => x.Id == id);

            if (data != null)
                data.Delete();

            return RedirectToAction("Index");
        }

        public ActionResult Details(int id)
        {
            var data = Leave.RetrieveAll().FirstOrDefault(x => x.Id == id);
            return View(new LeaveModel { Leave = data });
        }
    }
}