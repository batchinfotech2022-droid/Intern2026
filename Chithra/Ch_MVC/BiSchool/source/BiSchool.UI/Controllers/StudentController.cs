using BiSchool.BL;
using BiSchool.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BiSchool.BL;

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
                    string usrName = Session["UserName"]?.ToString() ?? "System";

                    Student.Create(
                        usrName,
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
        }
    }