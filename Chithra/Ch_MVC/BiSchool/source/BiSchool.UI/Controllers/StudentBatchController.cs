using BiSchool.BL;
using BiSchool.UI.IDEncription;
using BiSchool.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BiSchool.UI.Controllers
{
    public class StudentBatchController : Controller
    {
        public ActionResult Index()
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            List<StudentBatch> list = StudentBatch.RetrieveAll(usrName);
            List<StudentBatchModel> modelList = new List<StudentBatchModel>();

            foreach (StudentBatch sb in list)
            {
                StudentBatchModel m = new StudentBatchModel();

                m.Id = sb.Id;
                m.BatchTitle = sb.BatchTitle;
                m.StudentName = sb.StudentName;

                modelList.Add(m);
            }

            return View(modelList);
        }

        public ActionResult Create()
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            ViewBag.StudentList = new SelectList(Student.RetrieveAll(usrName), "Id", "FullName");
            ViewBag.BatchList = new SelectList(Batch.RetrieveAll(usrName), "Id", "Title");

            return View(new StudentBatchModel());
        }

        [HttpPost]
        public ActionResult Create(StudentBatchModel model)
        {
            StudentBatch.Create(Session["UserName"]?.ToString() ?? "System", model.BatchId, model.StudentId);
            return RedirectToAction("Index");
        }
        [EncryptedActionParameter]
        public ActionResult Edit(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            StudentBatch sb = StudentBatch.RetrieveById(usrName, id);

            ViewBag.StudentList = new SelectList(Student.RetrieveAll(usrName), "Id", "FullName", sb.StudentId);
            ViewBag.BatchList = new SelectList(Batch.RetrieveAll(usrName), "Id", "Title", sb.BatchId);

            return View(new StudentBatchModel(sb));
        }

        [HttpPost]
        [EncryptedActionParameter]
        public ActionResult Edit(StudentBatchModel model)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            StudentBatch sb = StudentBatch.RetrieveById(usrName, model.Id);

            sb.BatchId = model.BatchId;
            sb.StudentId = model.StudentId;

            sb.ModifiedBy = usrName;
            sb.ModifiedDate = DateTime.Now;

            sb.Update(usrName);

            return RedirectToAction("Index");
        }
        [EncryptedActionParameter]
        public ActionResult Delete(int id)
        {
            return View(new StudentBatchModel(StudentBatch.RetrieveById(Session["UserName"]?.ToString() ?? "System", id)));
        }

        [EncryptedActionParameter]
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            StudentBatch.Delete(Session["UserName"]?.ToString() ?? "System", id);
            return RedirectToAction("Index");
        }
    }
}