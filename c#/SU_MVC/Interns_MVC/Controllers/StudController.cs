using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Interns_MVC.Controllers
{
    public class StudController : Controller
    {
        // GET: Stud
        public ActionResult Index()
        {
            return View();
        }

        // GET: Stud/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Stud/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Stud/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Stud/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Stud/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Stud/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Stud/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
