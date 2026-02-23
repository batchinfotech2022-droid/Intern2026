using BiSchool.BL;
using BiSchool.UI.Models;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace BiSchool.UI.Controllers
{
    public class StudentBatchController : Controller
    {
        private string GetUser()
        {
            return Session["UserName"]?.ToString() ?? "System";
        }

        public ActionResult Index()
        {
            string usrName = GetUser();
            List<StudentBatch> list = StudentBatch.RetrieveAll(usrName);
            List<StudentBatchModel> modelList = new List<StudentBatchModel>();

            foreach (StudentBatch sb in list)
            {
                modelList.Add(new StudentBatchModel(sb));
            }

            return View(modelList);
        }

        public ActionResult Create()
        {
            string usrName = GetUser();

            ViewBag.StudentList = new SelectList(Student.RetrieveAll(usrName), "Id", "FullName");
            ViewBag.BatchList = new SelectList(Batch.RetrieveAll(usrName), "Id", "Title");

            return View(new StudentBatchModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(StudentBatchModel model)
        {
            if (ModelState.IsValid)
            {
                StudentBatch.Create(GetUser(), model.BatchId, model.StudentId);
                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Edit(int id)
        {
            string usrName = GetUser();
            StudentBatch sb = StudentBatch.RetrieveById(usrName, id);

            ViewBag.StudentList = new SelectList(Student.RetrieveAll(usrName), "Id", "FullName", sb.Studentid);
            ViewBag.BatchList = new SelectList(Batch.RetrieveAll(usrName), "Id", "Title", sb.Batchid);

            return View(new StudentBatchModel(sb));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(StudentBatchModel model)
        {
            if (ModelState.IsValid)
            {
                string usrName = GetUser();
                StudentBatch sb = StudentBatch.RetrieveById(usrName, model.Id);

                sb.Batchid = model.BatchId;
                sb.Studentid = model.StudentId;
                sb.Modifiedby = usrName;
                sb.Modifieddate = DateTime.Now;

                sb.Update(usrName);

                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Details(int id)
        {
            var sb = StudentBatch.RetrieveById(GetUser(), id);
            return View(new StudentBatchModel(sb));
        }

        public ActionResult Delete(int id)
        {
            var sb = StudentBatch.RetrieveById(GetUser(), id);
            return View(new StudentBatchModel(sb));
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            StudentBatch.Delete(GetUser(), id);
            return RedirectToAction("Index");
        }
    }
}