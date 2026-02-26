using BiSchool.UI.IDEncryption;
using Internsapp.BL;
using Internsapp.UI.Models;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Internsapp.UI.Controllers
{
    public class AttendanceController : Controller
    {
        private string userName => Session["UserName"]?.ToString() ?? "System";

        public ActionResult Index()
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            List<Attendance> list = Attendance.RetrieveAll(usrName);
            List<AttendanceModel> modelList = new List<AttendanceModel>();

            foreach (Attendance a in list)
            {
                AttendanceModel m = new AttendanceModel(a);

                m.Id = a.Id;
                m.InternId = a.InternId;
                m.InternName = a.InternName;
                m.AttendanceDate = a.AttendanceDate;
                m.Status = a.Status;

                modelList.Add(m);
            }

            return View(modelList);
        }

        public ActionResult Create()
        {
            LoadInternDropdown();
            LoadStatusDropdown();

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

            LoadInternDropdown();
            LoadStatusDropdown();
            return View(model);
        }

        //[EncryptedActionParameter]
        public ActionResult Edit(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            Attendance att = Attendance.RetrieveById(usrName, id);
            if (att == null)
                return HttpNotFound();

            LoadInternDropdown(att.InternId);
            LoadStatusDropdown(att.Status);

            return View(new AttendanceModel(att));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        //[EncryptedActionParameter]
        public ActionResult Edit(AttendanceModel model)
        {
            if (ModelState.IsValid)
            {
                model.Attendance.ModifiedBy = userName;
                model.Attendance.ModifiedDate = DateTime.Now;

                model.Attendance.Update(userName);

                return RedirectToAction("Index");
            }

            LoadInternDropdown(model.InternId);
            LoadStatusDropdown(model.Status);
            return View(model);
        }

        //[EncryptedActionParameter]
        public ActionResult Details(int id)
        {
            Attendance att = Attendance.RetrieveById(userName, id);
            if (att == null)
                return HttpNotFound();

            return View(new AttendanceModel(att));
        }

        //[EncryptedActionParameter]
        public ActionResult Delete(int id)
        {
            Attendance att = Attendance.RetrieveById(userName, id);
            if (att == null)
                return HttpNotFound();

            return View(new AttendanceModel(att));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        //[EncryptedActionParameter]
        [ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Attendance.Delete(userName, id);
            return RedirectToAction("Index");
        }


        private void LoadInternDropdown(int? selected = null)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            ViewBag.Interns = new SelectList(
                Intern.RetrieveAll(usrName),
                "Id",
                "FirstName",
                selected
            );
        }

        private void LoadStatusDropdown(string selected = null)
        {
            List<SelectListItem> statusList = new List<SelectListItem>
            {
                new SelectListItem { Text = "Present", Value = "Present" },
                new SelectListItem { Text = "Absent", Value = "Absent" },
                new SelectListItem { Text = "Half Day", Value = "Half Day" },
                new SelectListItem { Text = "Leave", Value = "Leave" }
            };

            ViewBag.StatusList = new SelectList(statusList, "Value", "Text", selected);
        }
    }
}