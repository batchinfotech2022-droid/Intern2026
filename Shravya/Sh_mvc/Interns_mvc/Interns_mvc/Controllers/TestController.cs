using Intern_MVC.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Intern_MVC.Controllers
{
    public class TestController : Controller
    {
        // GET: Test
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Create()
        {
            TestView testView = new TestView();
            ViewBag.title = "Done";
            return View(testView);
        }

        [HttpPost]
        public ActionResult Create(TestView model)
        {

            model.LanguageList = new List<SelectListItem>
                {
                    new SelectListItem { Text = "English", Value = "English" },
                    new SelectListItem { Text = "Hindi", Value = "Hindi" },
                    new SelectListItem { Text = "French", Value = "French" }
                };

            if (ModelState.IsValid)
            {
                ViewBag.Welcome = "Welcome " + model.Name;
            }

            return View(model);
        }
    }
}