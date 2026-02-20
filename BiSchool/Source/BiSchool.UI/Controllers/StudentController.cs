using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BiSchool.BL;
using BiSchool.UI.Models;

namespace BiSchool.UI.Controllers
{
    public class StudentController : Controller
    {
        
        private string userName = "Admin";
        public ActionResult Index()
        {
            

            return View();
        }
        public ActionResult Create()
        {
            return View(new StudentModel());
        }

    }
}