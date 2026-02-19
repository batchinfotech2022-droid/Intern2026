using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using UserTaskApp.BL;
using UserTaskApp.UI.Models;

namespace UserTaskApp.UI.Controllers
{
    public class RegisterController : Controller
    {
        string usrName = "Admin";

        public ActionResult Index()
        {

            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(RegisterModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            Register user = Register.RetrieveByUserName(model.UserName);
            if (user == null)
            {
                ModelState.AddModelError("", "The user name or password provided is incorrect.");
                return View(model);
            }

            if (!user.UserName.Equals(model.UserName, StringComparison.OrdinalIgnoreCase))
            {
                ModelState.AddModelError("", "The user name or password provided is incorrect.");
                return View(model);
            }


            bool result = Register.Authenticate(model.UserName, model.Password.Trim());

            if (result == true)
            {
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                                1, model.UserName, DateTime.Now, DateTime.Now.AddMinutes(2880),
                                false, FormsAuthentication.FormsCookiePath
                );
                string hash = FormsAuthentication.Encrypt(ticket);
                HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, hash)
                {
                    HttpOnly = true,
                    Expires = ticket.Expiration
                };

                Response.Cookies.Add(authCookie);
                return RedirectToAction("Index", "Home");
            }
            if (user.NoAttempts >= 3)
            {
                ModelState.AddModelError("", "Your account is locked due to multiple failed attempts.");
                return View(model);
            }

            if (user.Password == model.Password)
            {


                user.NoAttempts = 0;
                user.IsLogged = true;
                user.ModifiedBy = user.UserName;
                user.ModifiedDate = DateTime.Now;

                user.Update(user.UserName);

                FormsAuthentication.SetAuthCookie(user.UserName, false);

                Session["UserName"] = user.UserName;
                Session["UserId"] = user.Id;

                return RedirectToAction("Index", "Home");

            }
            else
            {
                user.NoAttempts += 1;

                if (user.NoAttempts >= 3)
                {
                    user.IsActive = false;
                }

                user.ModifiedBy = user.UserName;
                user.ModifiedDate = DateTime.Now;

                user.Update(user.UserName);

                ModelState.AddModelError("", "Invalid username or password.");
                return View(model);
            }
        }

        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            return RedirectToAction("Login", "Account");
        }

        public ActionResult Create()
        {
            return View();
        }
        
    }
}
