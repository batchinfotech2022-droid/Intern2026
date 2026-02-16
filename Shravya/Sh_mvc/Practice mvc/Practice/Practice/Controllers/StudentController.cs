using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Practice.Models;

namespace Practice.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        public ActionResult Result()
        {
            Student s = new Student();
            s.Id = 1;
            s.Name = "shravya";
            s.marks = 70;
s.status = s.marks >= 40 ? "pass" : "fail";
            return View(s);
        }
    }
}