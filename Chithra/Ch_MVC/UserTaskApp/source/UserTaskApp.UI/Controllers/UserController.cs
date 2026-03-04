using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using UserTaskApp.BL;
using UserTaskApp.DL;
using UserTaskApp.UI.ViewModels;
using UserTaskApp.UI.Models;





namespace UserTaskApp.UI.Controllers
{
    public class UserController : Controller
        {



        public ActionResult Index(string search,int pageIndex=0)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";
            int pageSize = 5;
            List<AppUser> list = AppUser.RetrieveAll(usrName);

            List<UserModel> users = list.Select(x => new UserModel(x)).ToList();
            // SEARCH FILTER
            if (!string.IsNullOrEmpty(search))
            {
                users = users.Where(x =>
                    x.UserName.ToLower().Contains(search.ToLower()) ||
                    x.FirstName.ToLower().Contains(search.ToLower()) ||
                    x.LastName.ToLower().Contains(search.ToLower())
                ).ToList();
            }

            StudentlistViewModel model = new StudentlistViewModel
            {
                Users = users
            };
            model._paginationPartialViewModel.PageIndex = pageIndex;
            model._paginationPartialViewModel.PageCount = (users.Count + pageSize - 1) / pageSize;
            model._paginationPartialViewModel.TotalData = users.Count;
            model._paginationPartialViewModel.ActionLink = "Index";
            model._paginationPartialViewModel.ControllerName= "User";
            model._paginationPartialViewModel.search = string.Empty;
            model.Users = model.Users.Skip(pageIndex * pageSize).Take(pageSize).ToList();
            if (Request.IsAjaxRequest())
            {
                return PartialView("Index", model);
            }

            return View(model);
        }



        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginViewModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            AppUser user = AppUser.RetrieveByUserName(model.UserName);

            if (user == null)
            {
                ModelState.AddModelError("", "Invalid username or password");
                return View(model);
            }

            if (user.NoAttempts >= 3)
            {
                ModelState.AddModelError("", "Account locked due to multiple failed attempts.");
                return View(model);
            }

            bool result = AppUser.Authenticate(model.UserName, model.Password.Trim());

            if (result)
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
                    user.IsActive = false;

                user.ModifiedBy = user.UserName;
                user.ModifiedDate = DateTime.Now;
                user.Update(user.UserName);

                ModelState.AddModelError("", "Invalid username or password");
                return View(model);
            }
        }


        [AllowAnonymous]
        public ActionResult Register()
        {
            return View(new UserModel());
        }

        [HttpPost]
        [AllowAnonymous]
        public ActionResult Register(UserModel model)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";
            if (!ModelState.IsValid)
                return View(model);

            model.CreatedBy = model.UserName;
            model.ModifiedBy = model.UserName;
            model.CreatedDate = DateTime.Now;
            model.ModifiedDate = DateTime.Now;
            model.IsActive = true;
            model.IsDeleted = false;
            model.NoAttempts = 0;

            AppUser.Create(usrName, model.UserName, model.FirstName, model.LastName, model.Password, model.Phone, model.Address, model.Role, model.IsActive, model.IsLogged, model.NoAttempts, model.IsLocked);

            return RedirectToAction("Login");
        }


        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            return RedirectToAction("Login", "User");
        }




        public ActionResult Create()
        {
            return View(new UserModel());
        }

        [HttpPost]
        public ActionResult Create(UserModel model)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";
            if (!ModelState.IsValid)
                return View(model);
            model.Role = "User";
            model.IsLogged = false;
            model.NoAttempts = 0;
            model.IsLocked = false;
            model.IsActive = true;
            AppUser.Create(
                usrName,
                model.UserName,
                model.FirstName,
                model.LastName,
                model.Password,
                model.Phone,
                model.Address,
                model.Role,
                model.IsActive,
                model.IsLogged,
                model.NoAttempts,
                model.IsLocked

            );

            return RedirectToAction("Index");
        }

        public ActionResult Edit(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";
            var user = AppUser.RetrieveById(usrName, id);
            return View(new UserModel(user));
        }

        [HttpPost]
     
        public ActionResult Edit(UserModel model)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";
            var user = AppUser.RetrieveById(usrName, model.Id);
            model.Password = user.Password;
            ModelState.Remove("Password");
            if (!ModelState.IsValid)
                return View(model);

            user.UserName = model.UserName;
            user.FirstName = model.FirstName;
            user.LastName = model.LastName;
            user.Phone = model.Phone;
            user.Address = model.Address;
            user.IsActive = model.IsActive;

            user.Update(usrName);

            return RedirectToAction("Index");
        }

        public ActionResult Details(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";
            var user = AppUser.RetrieveById(usrName, id);
            return View(new UserModel(user));
        }
        public ActionResult Delete(int? id)
        {

            if (id == null)
                return RedirectToAction("Index");

            string usrName = Session["UserName"]?.ToString() ?? "System";

            AppUser s = AppUser.RetrieveById(usrName, id.Value);

            if (s == null)
                return HttpNotFound();

            UserModel model = new UserModel
            {
                Id = s.Id,
                UserName = s.UserName,
                FirstName=s.FirstName,
                LastName=s.LastName,
                Password = s.Password,
                Phone = s.Phone,
                Address = s.Address,
                Role=s.Role,
                CreatedBy = s.CreatedBy,
                CreatedDate = s.CreatedDate,
                ModifiedBy = s.ModifiedBy,
                ModifiedDate = s.ModifiedDate,
                IsDeleted = s.IsDeleted
            };

            return View(model);
        }


        [HttpPost, ActionName("Delete")]

        
        public ActionResult DeleteConfirmed(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            AppUser.Delete(usrName, id);

            return RedirectToAction("Index");
        }
    }
}
    