using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InternLAapp.UI.Controllers
{
    public class AttendanceController : Controller
    {
        public ActionResult Index()
        {
            return View(GetAttendanceModelList());
        }

        private IEnumerable<AttendanceModel> GetAttendanceModelList()
        {
            List<AttendanceModel> list = new List<AttendanceModel>();
            foreach (Attendance a in Attendance.RetrieveAll("System"))
            {
                list.Add(new AttendanceModel(a));
            }
            return list.OrderBy(a => a.Id);
        }

        public ActionResult Create()
        {
            return View(new AttendanceModel());
        }

        [HttpPost]
        public ActionResult Create(AttendanceModel model)
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
            Attendance att = Attendance.RetrieveById("System", id);
            return View(new AttendanceModel(att));
        }

        public ActionResult Edit(int id)
        {
            Attendance att = Attendance.RetrieveById("System", id);
            return View(new AttendanceModel(att));
        }

        [HttpPost]
        public ActionResult Edit(AttendanceModel model)
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
            Attendance att = Attendance.RetrieveById("System", id);
            return View(new AttendanceModel(att));
        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            Attendance.Delete("System", id);
            return RedirectToAction("Index");
        }
    }
}