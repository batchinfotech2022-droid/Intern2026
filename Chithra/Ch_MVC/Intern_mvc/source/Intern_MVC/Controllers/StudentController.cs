using Intern_MVC.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Intern_MVC.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        public ActionResult Index()
        {
            List<StudentViewModel> Student = new List<StudentViewModel>
        {
          new StudentViewModel(1,"Chithra Acharya","A",90),
          new StudentViewModel(2,"Sulaksha Shetty","b",90),
          new StudentViewModel(3,"CShravya Kulal","v",90),
          new StudentViewModel(4,"Charishma GV","d",90),


            };
            return View(Student);
        }
   

        [HttpPost]
        public ActionResult Create()
        {

            
            return View();
        }


    }
}