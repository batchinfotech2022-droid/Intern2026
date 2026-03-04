using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BiSchool.BL;
using BiSchool.UI.IDEncryption;
using BiSchool.UI.Models;
using BiSchool.UI.ViewModels;

namespace BiSchool.UI.Controllers
{
    public class StudentController : Controller
    {
        public ActionResult Index(int pageIndex=1)
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
            StudentListViewModel vm = new StudentListViewModel();

            vm.Students = modelList;

            vm._paginationPartialViewModel.PageIndex = pageIndex;
            vm._paginationPartialViewModel.PageCount = (vm.Students.Count+pageSize-1)/pageSize;
            vm._paginationPartialViewModel.TotalData = vm.Students.Count ;
            vm._paginationPartialViewModel.ActionLink = "Index";
            vm._paginationPartialViewModel.ControllerName = "Student";
            vm._paginationPartialViewModel.search= string.Empty;
            vm.Students = vm.Students.Skip(pageIndex * pageSize).Take(pageSize).ToList();
            if(Request.IsAjaxRequest())
            {
                return PartialView("Index", vm);
            }
            return View(vm);

          
        }
        public ActionResult Create()
        {
            StudentModel model = new StudentModel();
            return View(model);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(StudentModel model)
        {
            if (ModelState.IsValid)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Student s = new Student();

                s.FullName = model.FullName;
                s.Email = model.Email;
                s.Password = model.Password;
                s.Address = model.Address;
                s.Phone = model.Phone;
                s.IsAdmin = model.IsAdmin;

                s.CreatedBy = usrName;
                s.CreatedDate = DateTime.Now;
                s.ModifiedBy = usrName;
                s.ModifiedDate = DateTime.Now;
                s.IsDeleted = false;

                Student.Create(
                    usrName,
                    s.FullName,
                    s.Email,
                    s.Password,
                    s.Address,
                    s.Phone,
                    s.IsAdmin
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }

        [EncryptedActionParameter]
        public ActionResult Edit(int? id)
        {
            if (id == null)
                return RedirectToAction("Index");

            string usrName = Session["UserName"]?.ToString() ?? "System";

            Student s = Student.RetrieveById(usrName, id.Value);

            if (s == null)
                return HttpNotFound();

            StudentModel model = new StudentModel
            {
                Id = s.Id,
                FullName = s.FullName,
                Email = s.Email,
                Address = s.Address,
                Phone = s.Phone,
                IsAdmin = s.IsAdmin,
                CreatedBy = s.CreatedBy,
                CreatedDate = s.CreatedDate,
                ModifiedBy = s.ModifiedBy,
                ModifiedDate = s.ModifiedDate,
                IsDeleted = s.IsDeleted
            };

            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [EncryptedActionParameter]
        public ActionResult Edit(StudentModel model)
        {
            if (ModelState.IsValid)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Student s = Student.RetrieveById(usrName, model.Id);

                if (s == null)
                    return HttpNotFound();

                s.FullName = model.FullName;
                s.Email = model.Email;
                s.Address = model.Address;
                s.Phone = model.Phone;
                s.IsAdmin = model.IsAdmin;

                

                s.ModifiedBy = usrName;
                s.ModifiedDate = DateTime.Now;

                s.Update(usrName);

                return RedirectToAction("Index");
            }

            return View(model);
        }

        [EncryptedActionParameter]
            public ActionResult Details(int id)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Student s = Student.RetrieveById(usrName, id);

                if (s == null)
                    return HttpNotFound();

                StudentModel model = new StudentModel
                {
                    Id = s.Id,
                    FullName = s.FullName,
                    Email = s.Email,
                    Password = s.Password,
                    Address = s.Address,
                    Phone = s.Phone,
                    IsAdmin = s.IsAdmin,
                    CreatedBy = s.CreatedBy,
                    CreatedDate = s.CreatedDate,
                    ModifiedBy = s.ModifiedBy,
                    ModifiedDate = s.ModifiedDate,
                    IsDeleted = s.IsDeleted
                };

                return View(model);
            }

        [EncryptedActionParameter]
            public ActionResult Delete(int? id)
            {
                if (id == null)
                    return RedirectToAction("Index");

                string usrName = Session["UserName"]?.ToString() ?? "System";

                Student s = Student.RetrieveById(usrName, id.Value);

                if (s == null)
                    return HttpNotFound();

                StudentModel model = new StudentModel
                {
                    Id = s.Id,
                    FullName = s.FullName,
                    Email = s.Email,
                    Password = s.Password,
                    Address = s.Address,
                    Phone = s.Phone,
                    IsAdmin = s.IsAdmin,
                    CreatedBy = s.CreatedBy,
                    CreatedDate = s.CreatedDate,
                    ModifiedBy = s.ModifiedBy,
                    ModifiedDate = s.ModifiedDate,
                    IsDeleted = s.IsDeleted
                };

                return View(model);
            }


            [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [EncryptedActionParameter]
        public ActionResult DeleteConfirmed(int id)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Student.Delete(usrName, id);

                return RedirectToAction("Index");
            }
        }
    }
