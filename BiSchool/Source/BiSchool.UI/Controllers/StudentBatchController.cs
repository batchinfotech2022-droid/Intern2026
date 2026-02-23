using BiSchool.BL;
using BiSchool.UI.IDEncryption;
using BiSchool.UI.Models;
using System.Collections.Generic;
using System.Web.Mvc;

namespace BiSchool.UI.Controllers
{
    public class StudentBatchController : Controller
    {
        private string userName = "Admin";

        public ActionResult Index()
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            List<StudentBatch> list = StudentBatch.RetrieveAll(usrName);
            List<StudentBatchModel> modelList = new List<StudentBatchModel>();

            foreach (StudentBatch sb in list)
            {
                StudentBatchModel m = new StudentBatchModel(sb);

                m.Id = sb.Id;
                m.BatchId = sb.Batchid;
                m.StudentId = sb.Studentid;
                m.BatchTitle = sb.Batchtitle;
                m.StudentName = sb.Studentname;

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
        [ValidateAntiForgeryToken]
        public ActionResult Create(StudentBatchModel model)
        {
            if (ModelState.IsValid)
            {
                StudentBatch.Create(
                    userName,
                    model.BatchId,
                    model.StudentId
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }
        [EncryptedActionParameter]
        public ActionResult Edit(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            StudentBatch sb = StudentBatch.RetrieveById(usrName, id);
            if (sb == null)
                return HttpNotFound();

            ViewBag.StudentList = new SelectList(
                Student.RetrieveAll(usrName),
                "Id",
                "FullName",
                sb.Studentid   
            );

            ViewBag.BatchList = new SelectList(
                Batch.RetrieveAll(usrName),
                "Id",
                "Title",
                sb.Batchid     
            );

            return View(new StudentBatchModel(sb));
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        [EncryptedActionParameter]
        public ActionResult Edit(StudentBatchModel model)
        {
            if (ModelState.IsValid)
            {
                model.studentBatch.Update(userName);
                return RedirectToAction("Index");
            }

            return View(model);
        }

        [EncryptedActionParameter]
        public ActionResult Details(int id)
        {
            StudentBatch sb = StudentBatch.RetrieveById(userName, id);
            if (sb == null)
                return HttpNotFound();

            return View(new StudentBatchModel(sb));
        }

        [EncryptedActionParameter]
        public ActionResult Delete(int id)
        {
            StudentBatch sb = StudentBatch.RetrieveById(userName, id);
            if (sb == null)
                return HttpNotFound();

            return View(new StudentBatchModel(sb));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [EncryptedActionParameter]
        [ActionName("Delete")]   
        public ActionResult DeleteConfirmed(int id)
        {
            StudentBatch.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}