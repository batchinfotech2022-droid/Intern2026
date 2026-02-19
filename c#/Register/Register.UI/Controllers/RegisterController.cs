using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Register.BL;
using Register.UI.Models;

namespace Register.UI.Controllers
{
    public class RegisterController : Controller
    {
        public ActionResult Index()
        {
            DataTable dt = Register.RetrieveAll();
            return View(dt);
        }

        // DETAILS
        public ActionResult Details(int id)
        {
            DataTable dt = Register.RetrieveById(id);
            return View(dt);
        }

        // CREATE GET
        public ActionResult Create()
        {
            return View();
        }

        // CREATE POST
        [HttpPost]
        public ActionResult Create(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                Register.Create(
                    model.UserName,
                    model.Password,
                    model.FirstName,
                    model.LastName,
                    model.Phone,
                    model.Address,
                    model.IsSystemUser,
                    model.IsSystemAdmin,
                    model.IsSystemSupervisor,
                    model.IsActive,
                    model.IsLocked,
                    model.NoAttempts,
                    DateTime.Now,
                    "Admin",
                    DateTime.Now,
                    "Admin",
                    false
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }

        // EDIT GET
        public ActionResult Edit(int id)
        {
            DataTable dt = Register.RetrieveById(id);

            RegisterModel model = new RegisterModel
            {
                Id = Convert.ToInt32(dt.Rows[0]["Id"]),
                UserName = dt.Rows[0]["UserName"].ToString(),
                Password = dt.Rows[0]["Password"].ToString(),
                FirstName = dt.Rows[0]["FirstName"].ToString(),
                LastName = dt.Rows[0]["LastName"].ToString(),
                Phone = dt.Rows[0]["Phone"].ToString(),
                Address = dt.Rows[0]["Address"].ToString(),

                IsSystemUser = Convert.ToBoolean(dt.Rows[0]["IsSystemUser"]),
                IsSystemAdmin = Convert.ToBoolean(dt.Rows[0]["IsSystemAdmin"]),
                IsSystemSupervisor = Convert.ToBoolean(dt.Rows[0]["IsSystemSupervisor"]),
                IsActive = Convert.ToBoolean(dt.Rows[0]["IsActive"]),
                IsLocked = Convert.ToBoolean(dt.Rows[0]["IsLocked"]),
                NoAttempts = Convert.ToInt32(dt.Rows[0]["NoAttempts"])
            };

            return View(model);
        }

        // EDIT POST
        [HttpPost]
        public ActionResult Edit(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                Register.Update(
                    model.Id,
                    model.UserName,
                    model.Password,
                    model.FirstName,
                    model.LastName,
                    model.Phone,
                    model.Address,
                    model.IsSystemUser,
                    model.IsSystemAdmin,
                    model.IsSystemSupervisor,
                    model.IsActive,
                    model.IsLocked,
                    model.NoAttempts,
                    DateTime.Now,
                    "Admin"
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }

        // DELETE GET
        public ActionResult Delete(int id)
        {
            DataTable dt = Register.RetrieveById(id);
            return View(dt);
        }

        // DELETE POST
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Register.Delete(id);
            return RedirectToAction("Index");
        }
    }
}