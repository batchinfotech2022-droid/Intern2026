using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InternLAapp.UI.Controllers
{
    public class InternsController : Controller
    {
        public ActionResult Index()
        {
            return View(GetInternModelList());
        }

        private IEnumerable<InternModel> GetInternModelList()
        {
            List<InternModel> list = new List<InternModel>();
            foreach (Interns i in Interns.RetrieveAll("System"))
            {
                list.Add(new InternModel(i));
            }
            return list.OrderBy(i => i.Id);
        }

        public ActionResult Create()
        {
            return View(new InternModel());
        }

        [HttpPost]
        public ActionResult Create(InternModel model)
        {
            if (ModelState.IsValid)
            {
                model.Create("System"); 
                return RedirectToAction("Index");
            }
            return View(model);
        }

        public ActionResult Details(int id)
        {
            Interns intern = Interns.RetrieveById("System", id);
            return View(new InternModel(intern));
        }

        public ActionResult Edit(int id)
        {
            Interns intern = Interns.RetrieveById("System", id);
            return View(new InternModel(intern));
        }

        [HttpPost]
        public ActionResult Edit(InternModel model)
        {
            if (ModelState.IsValid)
            {
                model.Update("System");
                return RedirectToAction("Index");
            }
            return View(model);
        }

        public ActionResult Delete(int id)
        {
            Interns intern = Interns.RetrieveById("System", id);
            return View(new InternModel(intern));
        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            Interns.Delete("System", id);
            return RedirectToAction("Index");
        }
    }
}