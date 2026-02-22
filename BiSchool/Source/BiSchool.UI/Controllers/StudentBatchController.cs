using System.Collections.Generic;
using System.Web.Mvc;
using BiSchool.BL;
using BiSchool.UI.Models;

namespace BiSchool.UI.Controllers
{
    public class StudentBatchController : Controller
    {
        private string userName = "Admin";

        public ActionResult Index()
        {
            List<StudentBatchModel> list = new List<StudentBatchModel>();

            foreach (StudentBatch sb in StudentBatch.RetrieveAll(userName))
            {
                list.Add(new StudentBatchModel(sb));
            }

            return View(list);
        }

        public ActionResult Create()
        {
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

        public ActionResult Edit(int? id)
        {
            if (id == null)
                return RedirectToAction("Index");

            StudentBatch sb = StudentBatch.RetrieveById(userName, id.Value);
            return View(new StudentBatchModel(sb));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(StudentBatchModel model)
        {
            if (ModelState.IsValid)
            {
                model.studentBatch.Update(userName);
                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Details(int id)
        {
            StudentBatch sb = StudentBatch.RetrieveById(userName, id);
            if (sb == null)
                return HttpNotFound();

            return View(new StudentBatchModel(sb));
        }

        public ActionResult Delete(int id)
        {
            StudentBatch sb = StudentBatch.RetrieveById(userName, id);
            if (sb == null)
                return HttpNotFound();

            return View(new StudentBatchModel(sb));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ActionName("Delete")]   
        public ActionResult DeleteConfirmed(int id)
        {
            StudentBatch.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}