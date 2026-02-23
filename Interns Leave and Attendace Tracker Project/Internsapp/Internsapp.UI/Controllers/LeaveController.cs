using System.Collections.Generic;
using System.Web.Mvc;
using Internsapp.BL;
using Internsapp.UI.Models;

namespace Internsapp.UI.Controllers
{
    public class LeaveController : Controller
    {
        private string userName = "Admin";

        public ActionResult Index()
        {
            List<LeaveModel> list = new List<LeaveModel>();

            foreach (Leave l in Leave.RetrieveAll(userName))
            {
                list.Add(new LeaveModel(l));
            }

            return View(list);
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
                model.leave.Update(userName);
                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Details(int id)
        {
            Leave leave = Leave.RetrieveById(userName, id);

            if (leave == null)
                return HttpNotFound();

            return View(new LeaveModel(leave));
        }

        public ActionResult Delete(int id)
        {
            Leave leave = Leave.RetrieveById(userName, id);
            return View(new LeaveModel(leave));
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Leave.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}