using Internsapp.BL;
using Internsapp.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Internsapp.UI.Controllers
{
    public class LeaveController : Controller
    {
        private string userName = "Admin";

        public ActionResult Index()
        {
            return View(GetLeaveModelList());
        }

        private IEnumerable<LeaveModel> GetLeaveModelList()
        {
            List<LeaveModel> list = new List<LeaveModel>();

            foreach (Leave l in Leave.RetrieveAll(userName)
                                     .OrderBy(l => l.LeaveId))
            {
                list.Add(new LeaveModel(l));
            }

            return list;
        }

        public ActionResult Create()
        {
            return View(new LeaveModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(LeaveModel model)
        {
            if (ModelState.IsValid)
            {
                Leave.Create(
                    userName,
                    model.InternId,
                    model.FromDate,
                    model.ToDate,
                    model.Reason
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Details(int id)
        {
            Leave leave = Leave.RetrieveById(userName, id);
            return View(new LeaveModel(leave));
        }

        public ActionResult Edit(int id)
        {
            Leave leave = Leave.RetrieveById(userName, id);
            return View(new LeaveModel(leave));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(LeaveModel model)
        {
            if (ModelState.IsValid)
            {
                model.Leave.Update(userName);
                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Delete(int id)
        {
            Leave leave = Leave.RetrieveById(userName, id);
            return View(new LeaveModel(leave));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Leave.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}