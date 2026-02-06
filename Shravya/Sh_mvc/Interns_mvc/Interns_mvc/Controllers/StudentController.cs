using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Intern_MVC.ViewModels;
using Interns_mvc.ViewModels;

namespace Interns_mvc.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        public ActionResult Index()
        {
            List<Student> students = new List<Student>
    {
        new Student(1, "Rahul Sharma", "A", "rahul.sharma@gmail.com", 85),
        new Student(2, "Ananya Rao", "B", "ananya.rao@gmail.com", 92),
        new Student(3, "Kiran Shetty", "A", "kiran.shetty@gmail.com", 78),
        new Student(4, "Priya Kulkarni", "C", "priya.k@gmail.com", 88),
        new Student(5, "Arjun Patel", "B", "arjun.patel@gmail.com", 95)
    };

            return View(students);

        }

        public ActionResult Create()
        {
            Student s = new Student();
            return View(s);
        }
    }
}