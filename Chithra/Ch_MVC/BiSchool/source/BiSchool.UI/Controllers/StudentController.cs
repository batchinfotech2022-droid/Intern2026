using BiSchool.BL;
using BiSchool.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace BiSchool.UI.Controllers
{
    public class StudentController : Controller
    {

   
            public ActionResult Index()
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                List<Student> students = Student.RetrieveAll(usrName);

                List<StudentModel> modelList = new List<StudentModel>();

                foreach (Student s in students)
                {
                    StudentModel m = new StudentModel();

                    m.Id = s.Id;
                    m.FullName = s.FullName;
                    m.Email = s.Email;
                    m.Password = s.Password;
                    m.Address = s.Address;
                    m.Phone = s.Phone;
                    m.IsAdmin = s.IsAdmin;

                    modelList.Add(m);
                }

                return View(modelList);
            }


            public ActionResult Edit(int id)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Student s = Student.RetrieveById(usrName, id);

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

            [HttpPost]
     
        public ActionResult Edit(StudentModel model)
        {
            if (ModelState.IsValid)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Student s = Student.RetrieveById(usrName, model.Id);

                // Always check null (safety)
                if (s == null)
                {
                    return HttpNotFound();
                }

                s.FullName = model.FullName;
                s.Email = model.Email;
                s.Password = model.Password;
                s.Address = model.Address;
                s.Phone = model.Phone;
                s.IsAdmin = model.IsAdmin;

                // Preserve original created values
                s.CreatedBy = model.CreatedBy;
                s.CreatedDate = model.CreatedDate;

                // Update modified fields
                s.ModifiedBy = usrName;
                s.ModifiedDate = DateTime.Now;

                s.IsDeleted = model.IsDeleted;   // IMPORTANT

                s.Update(usrName);

                return RedirectToAction("Index");
            }

            return View(model);
        }
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
        public ActionResult DeleteConfirmed(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            Student.Delete(usrName, id);

            return RedirectToAction("Index");
        }
    }
}
    