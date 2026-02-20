using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using InternLAApp.BL;
using InternLAApp.UI.Models;

namespace InternLAApp.UI.Controllers
{
    public class InternsController : Controller
    {
        string usrName = "Admin"; // Replace if dynamic user is needed

        // GET: Interns
        public ActionResult Index()
        {
            // RetrieveAll on the BL class `Interns` (no usrName parameter)
            List<Interns> list = Interns.RetrieveAll();
            List<InternsModel> model = list.Select(x => new InternsModel(x)).ToList();
            return View(model);
        }

        // GET: Interns/Create
        public ActionResult Create()
        {
            return View(new InternsModel());
        }

        // POST: Interns/Create
        [HttpPost]
        public ActionResult Create(InternsModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    // Create signature on BL.Interns accepts usrName + intern fields
                    Interns.Create(
                        usrName,
                        model.FullName,
                        model.DateOfJoining,
                        model.AvailableLeave
                    );
                    return RedirectToAction("Index");
                }
                return View(model);
            }
            catch
            {
                return View(model);
            }
        }

        // GET: Interns/Edit/5
        public ActionResult Edit(int id)
        {
            // RetrieveById on BL.Interns accepts only id
            Interns intern = Interns.RetrieveById(id);
            return View(new InternsModel(intern));
        }

        // POST: Interns/Edit
        [HttpPost]
        public ActionResult Edit(InternsModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    // Update is an instance method on Interns
                    // ensure ModifiedBy/ModifiedDate are set if required by business rules
                    model.Intern.ModifiedBy = usrName;
                    model.Intern.ModifiedDate = DateTime.Now;
                    model.Intern.Update();
                    return RedirectToAction("Index");
                }
                return View(model);
            }
            catch
            {
                return View(model);
            }
        }

        // GET: Interns/Details/5
        public ActionResult Details(int id)
        {
            Interns intern = Interns.RetrieveById(id);
            return View(new InternsModel(intern));
        }

        // GET: Interns/Delete/5
        public ActionResult Delete(int id)
        {
            Interns intern = Interns.RetrieveById(id);
            return View(new InternsModel(intern));
        }

        // POST: Interns/Delete
        [HttpPost]
        public ActionResult DeleteConfirmed(int id)
        {
            // BL.Interns exposes an instance Delete method. Retrieve then delete.
            Interns intern = Interns.RetrieveById(id);
            if (intern != null)
            {
                intern.Delete();
            }
            return RedirectToAction("Index");
        }
    }
}