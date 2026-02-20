
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Interns_MVC.ViewModels;


namespace Interns_MVC.Controllers
{
    public class StudentController : Controller
    {
        [HttpPost]
        public ActionResult Index()
        {
            List <StudentViewModel >students = new List<StudentViewModel>()
        {
            new StudentViewModel(101, "Rahul Patil", "ECE-3A", 87),
            new StudentViewModel(102, "Sneha Kulkarni", "ECE-3B", 92),
            new StudentViewModel(103, "Amit Desai", "ECE-2A", 78),
            new StudentViewModel(104, "Pooja Naik", "CSE-1A", 85),
            new StudentViewModel(105, "Kiran Joshi", "ISE-2B", 90),
            new StudentViewModel(106, "Neha Kulkarni", "ECE-4A", 88)
        };

        return View(); 
    }
        
        
    }
}