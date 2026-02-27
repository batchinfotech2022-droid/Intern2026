using Internsapp.BL;
using Internsapp.UI.Models;
using Internsapp.UI.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Internsapp.UI.Controllers
{
    public class InternController : Controller
    {
        private string CurrentUser => Session["UserName"]?.ToString() ?? "System";

        // ===================== INDEX =====================
        public ActionResult Index()
        {
            var list = Intern.RetrieveAll(CurrentUser)
                             .Select(i => new InternModel(i))
                             .ToList();

            return View(list);
        }

        // ===================== CREATE =====================
        public ActionResult Create()
        {
            return View(new InternModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(InternModel model)
        {
            if (ModelState.IsValid)
            {
                Intern.Create(
                    CurrentUser,
                    model.FirstName,
                    model.LastName,
                    model.UserName,
                    model.Password,
                    model.DateOfJoining == DateTime.MinValue ? DateTime.Now : model.DateOfJoining,
                    0,
                    model.Address,
                    model.Phone,
                    model.IsSystemAdmin,
                    model.IsActive,
                    false,
                    0
                );
                TempData["ToastMessage"] = "Intern created successfully 🎉";
                TempData["ToastType"] = "success";

                return RedirectToAction("Index");
            }

            return View(model);
        }

        // ===================== EDIT =====================
        public ActionResult Edit(int id)
        {
            var intern = Intern.RetrieveById(CurrentUser, id);
            return View(new InternModel(intern));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(InternModel model)
        {
            if (ModelState.IsValid)
            {
                var intern = Intern.RetrieveById(CurrentUser, model.Id);

                intern.FirstName = model.FirstName;
                intern.LastName = model.LastName;
                intern.UserName = model.UserName;
                intern.Password = model.Password;
                intern.Phone = model.Phone;
                intern.Address = model.Address;
                intern.AvailableLeave = model.AvailableLeave;
                intern.IsActive = model.IsActive;
                intern.IsLocked = model.IsLocked;
                intern.NoOfAttempts = model.NoOfAttempts;

                intern.ModifiedBy = CurrentUser;
                intern.ModifiedDate = DateTime.Now;

                intern.Update(CurrentUser);
                TempData["ToastMessage"] = "Intern updated successfully ✏️";
                TempData["ToastType"] = "success";

                return RedirectToAction("Index");
            }
            

            return View(model);
        }

        // ===================== DETAILS =====================
        public ActionResult Details(int id)
        {
            var intern = Intern.RetrieveById(CurrentUser, id);
            return View(new InternModel(intern));
        }

        // ===================== DELETE =====================
        public ActionResult Delete(int id)
        {
            var intern = Intern.RetrieveById(CurrentUser, id);
            return View(new InternModel(intern));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(InternModel model)
        {
            Intern.Delete(CurrentUser, model.Id);
            TempData["ToastMessage"] = "Intern deleted successfully 🗑️";
            TempData["ToastType"] = "danger";
            return RedirectToAction("Index");
        }

        [AllowAnonymous]
        public ActionResult Register()
        {
            return View(new InternModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Register(InternModel model)
        {
            if (ModelState.IsValid)
            {
                Intern.Register(
                    model.UserName,
                    model.FirstName,
                    model.LastName,
                    model.UserName,
                    model.Password,
                    DateTime.Now,
                    0,
                    model.Address,
                    model.Phone
                );

                return RedirectToAction("Login");
            }

            return View(model);
        }

        [AllowAnonymous]
        public ActionResult Login()
        {
            return View(new LoginViewModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginViewModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            bool isValid = Intern.Login(model.UserName, model.Password);

            if (isValid)
            {
                Session["UserName"] = model.UserName;

                string role = "Intern";

                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                    1,
                    model.UserName,
                    DateTime.Now,
                    DateTime.Now.AddMinutes(2880),
                    false,
                    role,
                    FormsAuthentication.FormsCookiePath
                );

                string hash = FormsAuthentication.Encrypt(ticket);

                HttpCookie authCookie = new HttpCookie(
                    FormsAuthentication.FormsCookieName, hash)
                {
                    HttpOnly = true,
                    Expires = ticket.Expiration
                };

                Response.Cookies.Add(authCookie);

                return RedirectToAction("Index", "Home");
            }

            ModelState.AddModelError("", "Invalid username or password");
            return View(model);
        }

        // ===================== LOGOUT =====================
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            return RedirectToAction("Login");
        }
    }
}