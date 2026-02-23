using System.Collections.Generic;
using System.Web.Mvc;
using Internsapp.BL;
using Internsapp.UI.Models;

namespace Internsapp.UI.Controllers
{
    public class InternController : Controller
    {
        private string userName = "Admin";

        
        public ActionResult Login()
        {
            return View(new LoginModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                Intern intern = Intern.RetrieveByUserName(userName, model.UserName);

                if (intern != null && intern.Password == model.Password)
                {
                    if (!intern.IsActive)
                    {
                        ModelState.AddModelError("", "Account is inactive");
                        return View(model);
                    }

                    if (intern.IsLocked)
                    {
                        ModelState.AddModelError("", "Account is locked");
                        return View(model);
                    }

                    Session["UserId"] = intern.Id;
                    Session["UserName"] = intern.UserName;
                    Session["IsAdmin"] = intern.IsSystemAdmin;

                    return RedirectToAction("Index");
                }

                ModelState.AddModelError("", "Invalid Username or Password");
            }

            return View(model);
        }

        public ActionResult Logout()
        {
            Session.Clear();
            Session.Abandon();
            return RedirectToAction("Login");
        }

        
        public ActionResult Index()
        {
            List<InternModel> list = new List<InternModel>();

            foreach (Intern i in Intern.RetrieveAll(userName))
            {
                list.Add(new InternModel(i));
            }

            return View(list);
        }

        
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
                    userName,
                    model.FirstName,
                    model.LastName,
                    model.UserName,
                    model.Password,
                    model.DateOfJoining,
                    model.AvailableLeave,
                    model.Address,
                    model.Phone,
                    model.IsSystemAdmin,
                    model.IsActive
                );

                return RedirectToAction("Login");
            }

            return View(model);
        }

        
        public ActionResult Edit(int id)
        {
            Intern intern = Intern.RetrieveById(userName, id);
            return View(new InternModel(intern));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(InternModel model)
        {
            if (ModelState.IsValid)
            {
                model.intern.Update(userName);
                return RedirectToAction("Index");
            }

            return View(model);
        }

        
        public ActionResult Details(int id)
        {
            Intern intern = Intern.RetrieveById(userName, id);

            if (intern == null)
                return HttpNotFound();

            return View(new InternModel(intern));
        }

        
        public ActionResult Delete(int id)
        {
            Intern intern = Intern.RetrieveById(userName, id);
            return View(new InternModel(intern));
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Intern.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}