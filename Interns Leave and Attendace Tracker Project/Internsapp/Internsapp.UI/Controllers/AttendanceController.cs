using System.Collections.Generic;
using System.Web.Mvc;
using Internsapp.BL;
using Internsapp.UI.Models;

namespace Internsapp.UI.Controllers
{
    public class AttendanceController : Controller
    {
        private string userName = "Admin";

        public ActionResult Index()
        {
            List<AttendanceModel> list = new List<AttendanceModel>();

            foreach (Attendance a in Attendance.RetrieveAll(userName))
            {
                list.Add(new AttendanceModel(a));
            }

            return View(list);
        }

        public ActionResult Create()
        {
            return View(new AttendanceModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(AttendanceModel model)
        {
            if (ModelState.IsValid)
            {
                Attendance.Create(
                    userName,
                    model.InternId,
                    model.AttendanceDate,
                    model.Status
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Edit(int id)
        {
            Attendance attendance = Attendance.RetrieveById(userName, id);
            return View(new AttendanceModel(attendance));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(AttendanceModel model)
        {
            if (ModelState.IsValid)
            {
                model.attendance.Update(userName);
                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Details(int id)
        {
            Attendance attendance = Attendance.RetrieveById(userName, id);

            if (attendance == null)
                return HttpNotFound();

            return View(new AttendanceModel(attendance));
        }

        public ActionResult Delete(int id)
        {
            Attendance attendance = Attendance.RetrieveById(userName, id);
            return View(new AttendanceModel(attendance));
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Attendance.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}