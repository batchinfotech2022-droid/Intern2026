using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using BiSchool.BL;
using BiSchool.UI.IDEncryption;
using BiSchool.UI.Models;
using BiSchool.UI.ViewModels;

namespace BiSchool.UI.Controllers
{
    public class StudentController : Controller
    {
        private string userName = "Admin";

        public ActionResult Index(int pageIndex = 0)
        {
            int pageSize = 20;
            string usrName = Session["UserName"]?.ToString() ?? "System";

            List<Student> students = Student.RetrieveAll(usrName);

            List<StudentModel> modelList = new List<StudentModel>();

            foreach (Student s in students)
            {
                StudentModel m = new StudentModel();

                m.Id = s.Id;
                m.FullName = s.FullName;
                m.Email = s.Email;
                m.Address = s.Address;
                m.Phone = s.Phone;
                m.IsAdmin = s.IsAdmin;

                modelList.Add(m);
            }


            // Create ViewModel
            StudentViewModel vm = new StudentViewModel();

            vm.Students = modelList;

            vm._PaginationPartialViewModel.PageIndex = pageIndex;
            vm._PaginationPartialViewModel.PageCount = (vm.Students.Count + pageSize - 1) / pageSize;
            vm._PaginationPartialViewModel.TotalData = vm.Students.Count;
            vm._PaginationPartialViewModel.ActionLink = "Index";
            vm._PaginationPartialViewModel.ControllerName = "Student";
            vm._PaginationPartialViewModel.search = string.Empty;
            vm.Students = vm.Students.Skip(pageIndex * pageSize).Take(pageSize).ToList();
            if (Request.IsAjaxRequest())
            {
                return PartialView("Index", vm);
            }

            return View(vm);


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
            if (!ModelState.IsValid)
                return View(model);

            
            Student s = new Student();
            s.Id = model.Id;
            s.FullName = model.FullName;
            s.Email = model.Email;
            s.Password = model.Password;
            s.Address = model.Address;
            s.Phone = model.Phone;
            s.IsAdmin = model.IsAdmin;

            s.Update(userName);

            return RedirectToAction("Index");
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