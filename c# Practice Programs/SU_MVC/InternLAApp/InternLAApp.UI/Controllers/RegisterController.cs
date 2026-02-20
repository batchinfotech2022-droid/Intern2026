using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using InternLAApp.BL;
using InternLAApp.UI.ViewModels;

namespace InternLAApp.UI.Controllers
{
    public class RegisterController : Controller
    {
        public ActionResult Index()
        {
            List<RegisterViewModel> vmList = new List<RegisterViewModel>();
            var users = Register.RetrieveAll();

            foreach (var user in users)
            {
                vmList.Add(new RegisterViewModel
                {
                    Id = user.Id,
                    UserName = user.UserName,
                    Password = user.Password,
                    FirstName = user.FirstName,
                    LastName = user.LastName,
                    Phone = user.Phone,
                    Address = user.Address,
                    IsSystemUser = user.IsSystemUser,
                    IsSystemAdmin = user.IsSystemAdmin,
                    IsSystemSupervisor = user.IsSystemSupervisor,
                    IsActive = user.IsActive,
                    IsLocked = user.IsLocked   
                });
            }

            return View(vmList);
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(RegisterViewModel vm)
        {
            if (ModelState.IsValid)
            {
                Register.Create(vm.UserName, vm.Password,
                                vm.FirstName, vm.LastName,
                                vm.Phone, vm.Address,
                                vm.IsSystemUser, vm.IsSystemAdmin,
                                vm.IsSystemSupervisor, vm.IsActive,
                                vm.IsLocked);

                return RedirectToAction("Login");   
            }

            return View(vm);
        }


        public ActionResult Edit(int id)
        {
            var user = Register.RetrieveById(id);
            if (user == null) return HttpNotFound();

            return View(new RegisterViewModel
            {
                Id = user.Id,
                UserName = user.UserName,
                Password = user.Password,
                FirstName = user.FirstName,
                LastName = user.LastName,
                Phone = user.Phone,
                Address = user.Address,
                IsSystemUser = user.IsSystemUser,
                IsSystemAdmin = user.IsSystemAdmin,
                IsSystemSupervisor = user.IsSystemSupervisor,
                IsActive = user.IsActive,
                IsLocked = user.IsLocked   
            });
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(RegisterViewModel vm)
        {
            if (ModelState.IsValid)
            {
                Register.Update(vm.Id, vm.UserName, vm.Password,
                                vm.FirstName, vm.LastName,
                                vm.Phone, vm.Address,
                                vm.IsSystemUser, vm.IsSystemAdmin,
                                vm.IsSystemSupervisor, vm.IsActive,
                                vm.IsLocked);  

                return RedirectToAction("Login");
            }

            return View(vm);
        }

        public ActionResult Delete(int id)
        {
            Register.Delete(id);
            return RedirectToAction("Index");
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(RegisterViewModel vm)
        {
            if (ModelState.IsValid)
            {
                bool result = Register.Authenticate(vm.UserName, vm.Password);
                if (result == true)
                {
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                   1, vm.UserName, DateTime.Now, DateTime.Now.AddMinutes(2880),
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


            }
            public Actionresult Create()
                {
                FormsAuthentication.SignOut();
                Session.Clear();
                return RedirectToAction("Login", "Register");
            }

            return View(vm);
        }
    }
}
