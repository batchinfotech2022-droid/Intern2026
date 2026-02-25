using SmartCMApp.BL;
using SmartCMApp.UI.Models;
using SmartCMApp.UI.ViewModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;


namespace SmartCMApp.UI.Controllers
{
   
    public class AccountController : Controller
    {
        private string userName = "Admin";

        [AllowAnonymous]
        public ActionResult Register()
        {
            RegisterViewModel model = new RegisterViewModel();

            ViewBag.CategoryList = Category.RetrieveAll(userName)
                .Where(c => c.IsActive)
                .Select(c => new SelectListItem
                {
                    Text = c.CategoryName,
                    Value = c.Id.ToString()
                }).ToList();

            return View(model);
        }



        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Register(RegisterViewModel model)
        {
            if (!ModelState.IsValid)
            {
                ViewBag.CategoryList = Category.RetrieveAll(userName)
                    .Where(c => c.IsActive)
                    .Select(c => new SelectListItem
                    {
                        Text = c.CategoryName,
                        Value = c.Id.ToString()
                    }).ToList();

                return View(model);
            }

            Contact.Create(
                model.FullName,
                model.Phone,
                model.City,
                model.CategoryId,
                model.UserName,
                model.PassWord,
                "User"
            );

            return RedirectToAction("Login","Account");
        }



        [AllowAnonymous]
        public ActionResult Login()
        {
            return View();
        }


        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginViewModel model)

        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            Contact user = Contact.RetrieveByUserName(model.UserName);

            if (user == null || user.IsDeleted || !user.IsActive)
            {
                ModelState.AddModelError("", "Invalid username or account inactive.");
                return View(model);
            }
            bool result = Contact.Authenticate(model.UserName, model.Password);
            if (result == true)
            {
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                1, model.UserName, DateTime.Now, DateTime.Now.AddMinutes(2880),
                false, "Admin", FormsAuthentication.FormsCookiePath
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

            if (user.NoOfAttempts >= 3)
            {
                ModelState.AddModelError("", "Your account is locked due to multiple failed attempts.");
                return View(model);
            }

            if (user.PassWord == model.Password)
            {


                user.NoOfAttempts = 0;
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
                user.NoOfAttempts += 1;

                if (user.NoOfAttempts >= 3)
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






         
        }
    }

