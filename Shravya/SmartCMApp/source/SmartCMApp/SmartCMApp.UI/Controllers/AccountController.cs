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

            Register user = Register.RetrieveByUserName(model.UserName);

            if (user == null || user.IsDeleted || !user.IsActive)
            {
                ModelState.AddModelError("", "Invalid username or account inactive.");
                return View(model);
            }
            bool result = Register.Authenticate(model.UserName,model.Password);
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

            if (user.Password == model.Password)
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





        public ActionResult Create()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(AccountModel model)

        {
            if (ModelState.IsValid)
            {
                Register obj = new Register();

                obj.FirstName = model.FirstName;
                obj.LastName = model.LastName;
                obj.Address = model.Address;
                obj.Phone = model.Phone;
                obj.UserName = model.UserName;
                obj.Password = model.Password;
                obj.IsActive = true;

                Register.Create(obj, "Admin");

                return RedirectToAction("Login");

            }

            return View(model);
        }
    }
}
