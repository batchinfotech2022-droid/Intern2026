using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Interns_mvc.Controllers
{
    public class BIController : Controller
    {
        // GET: BI
        public ActionResult Index()
        {
            return View();
        }

        // GET: BI/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: BI/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BI/Create
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

        // GET: BI/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: BI/Edit/5
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

        // GET: BI/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: BI/Delete/5
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
