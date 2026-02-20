using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UserTaskApp.BL;
using UserTaskApp.UI.Models;

namespace UserTaskApp.UI.Controllers
{
    public class UserController : Controller
        {
            string usrName = "Admin";

            public ActionResult Index()
            {
                List<UserTaskApp.BL.User> list = UserTaskApp.BL.User.RetrieveAll(usrName);
                List<UserModel> model = list.Select(x => new UserModel(x)).ToList();
                return View(model);
            }

            public ActionResult Create()
            {
                return View(new UserModel());
            }

        [HttpPost]
        public ActionResult Create(UserModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

              // or logged-in user

            UserTaskApp.BL.User.Create( usrName,model.Name, model.Role);

            return RedirectToAction("Index");
        }


        public ActionResult Edit(int id)
            {
                var user = UserTaskApp.BL.User.RetrieveById(usrName, id);
                return View(new UserModel(user));
            }

            [HttpPost]
            public ActionResult Edit(UserModel model)
            {
                if (ModelState.IsValid)
                {
                    model.User.Update(usrName);
                    return RedirectToAction("Index");
                }
                return View(model);
            }

            public ActionResult Details(int id)
            {
                var user = UserTaskApp.BL.User.RetrieveById(usrName, id);
                return View(new UserModel(user));
            }

            public ActionResult Delete(int id)
            {
                var user = UserTaskApp.BL.User.RetrieveById(usrName, id);
                return View(new UserModel(user));
            }

            [HttpPost]
            public ActionResult DeleteConfirmed(int id)
            {
                UserTaskApp.BL.User.Delete(usrName, id);
                return RedirectToAction("Index");
            }
        }
    }
