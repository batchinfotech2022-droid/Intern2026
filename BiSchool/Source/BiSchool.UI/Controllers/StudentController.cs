using System.Collections.Generic;
using System.Web.Mvc;
using BiSchool.BL;
using BiSchool.UI.IDEncryption;
using BiSchool.UI.Models;

namespace BiSchool.UI.Controllers
{
    public class StudentController : Controller
    {
        private string userName = "Admin";

        public ActionResult Index()
        {
            List<StudentModel> list = new List<StudentModel>();

            foreach (Student s in Student.RetrieveAll(userName))
            {
                list.Add(new StudentModel(s));
            }

            return View(list);
        }

        public ActionResult Create()
        {
            return View(new StudentModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(StudentModel model)
        {
            if (ModelState.IsValid)
            {
                Student.Create(
                    userName,
                    model.FullName,
                    model.Email,
                    model.Password,
                    model.Address,
                    model.Phone,
                    model.IsAdmin
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }
        [EncryptedActionParameter]
        public ActionResult Edit(int id)
        {
            Student student = Student.RetrieveById(userName, id);
            return View(new StudentModel(student));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [EncryptedActionParameter]
        public ActionResult Edit(StudentModel model)
        {
            if (ModelState.IsValid)
            {
                model.student.Update(userName);
                return RedirectToAction("Index");
            }

            return View(model);
        }
        [EncryptedActionParameter]
        public ActionResult Details(int id)
        {
            Student student = Student.RetrieveById(userName, id);
            if (student == null)
                return HttpNotFound();

            return View(new StudentModel(student));
        }
        [EncryptedActionParameter]
        public ActionResult Delete(int id)
        {
            Student student = Student.RetrieveById(userName, id);
            return View(new StudentModel(student));
        }
        [EncryptedActionParameter]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Student.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}