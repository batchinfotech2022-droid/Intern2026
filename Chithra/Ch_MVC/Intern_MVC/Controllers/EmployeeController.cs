using Intern_MVC.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Intern_MVC.Controllers
{
     // GET: Employee
     
        public class EmployeeController : Controller
        {

            // Declaration at controller level
            List<SelectListItem> languageData;

            public ActionResult Create()
            {
                // Dataset creation
                languageData = new List<SelectListItem>()
        {
            new SelectListItem { Text="English", Value="English"},
            new SelectListItem { Text="Hindi", Value="Hindi"},
            new SelectListItem { Text="French", Value="French"}
        };

                // Storage into ViewModel
                EmployeeViewModel model = new EmployeeViewModel();
                model.LanguageList = languageData;

                return View(model);
            }

            [HttpPost]
            public ActionResult Create(EmployeeViewModel model)
            {
                // Recreate dataset after post
                languageData = new List<SelectListItem>()
        {
            new SelectListItem { Text="English", Value="English"},
            new SelectListItem { Text="Hindi", Value="Hindi"},
            new SelectListItem { Text="French", Value="French"}
        };

                model.LanguageList = languageData;

                // Call ViewModel function
                string storedValue = model.FetchLanguage();

                ViewBag.Result = storedValue;

                return View(model);
            }
        }

    }
