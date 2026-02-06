
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Interns_MVC.ViewModels;

namespace Interns_MVC.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Login()
        {
            LoginViewModel modal = new LoginViewModel();
            return View(modal);

        }
        [HttpPost]
        public ActionResult Login(LoginViewModel Model)
        {
            LoginViewModel model = new LoginViewModel(Model.username, Model.password,Model.email);
            model.username = "Sam";
            ViewBag.Test = "Test";
            return View(model);
        }


    }
}
