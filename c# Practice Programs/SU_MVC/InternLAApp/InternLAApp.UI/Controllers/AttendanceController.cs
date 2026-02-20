using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using InternLAApp.BL;
using InternLAApp.UI.Models;

namespace InternLAApp.UI.Controllers
{
    public class AttendanceController : Controller
    {
string usrName = "Admin";

        // GET: Attendance
        public ActionResult Index()
        {
            List<Attendance> list = Attendance.RetrieveAll();
            List<AttendanceModel> model = list
                                         .Select(x => new AttendanceModel(x))
                                         .ToList();
            return View(model);
        }

        // GET: Attendance/Create
        public ActionResult Create()
        {
            return View(new AttendanceModel());
        }

        // POST: Attendance/Create
        [HttpPost]
        public ActionResult Create(AttendanceModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    Attendance.Create(
                        usrName,
                        model.InternId,
                        model.AttendanceDate,
                        model.Status
                    );

                    return RedirectToAction("Index");
                }

                return View(model);
            }
            catch
            {
                return View(model);
            }
        }

        // GET: Attendance/Edit/5
        public ActionResult Edit(int id)
        {
            Attendance attendance = Attendance.RetrieveById(id);
            return View(new AttendanceModel(attendance));
        }

        // POST: Attendance/Edit
        [HttpPost]
        public ActionResult Edit(AttendanceModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    model.Attendance.ModifiedBy = usrName;
                    model.Attendance.ModifiedDate = DateTime.Now;

                    model.Attendance.Update();

                    return RedirectToAction("Index");
                }

                return View(model);
            }
            catch
            {
                return View(model);
            }
        }

        // GET: Attendance/Details/5
        public ActionResult Details(int id)
        {
            Attendance attendance = Attendance.RetrieveById(id);
            return View(new AttendanceModel(attendance));
        }

        // GET: Attendance/Delete/5
        public ActionResult Delete(int id)
        {
            Attendance attendance = Attendance.RetrieveById(id);
            return View(new AttendanceModel(attendance));
        }

        // POST: Attendance/Delete
        [HttpPost]
        public ActionResult DeleteConfirmed(int id)
        {
            Attendance attendance = Attendance.RetrieveById(id);

            if (attendance != null)
            {
                attendance.Delete();
            }

            return RedirectToAction("Index");
        }
    }
}