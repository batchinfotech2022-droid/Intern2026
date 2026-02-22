using System.Collections.Generic;
using System.Web.Mvc;
using BiSchool.BL;
using BiSchool.UI.Models;

namespace BiSchool.UI.Controllers
{
    public class FeesController : Controller
    {
        private string userName = "Admin";

        public ActionResult Index()
        {
            List<FeesModel> list = new List<FeesModel>();

            foreach (Fees f in Fees.RetrieveAll(userName))
            {
                list.Add(new FeesModel(f));
            }

            return View(list);
        }

        public ActionResult Create()
        {
            return View(new FeesModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(FeesModel model)
        {
            if (ModelState.IsValid)
            {
                Fees.Create(
                    userName,
                    model.StudentId,
                    model.Amount,
                    model.Date
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Edit(int id)
        {
            Fees fees = Fees.RetrieveById(userName, id);
            return View(new FeesModel(fees));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(FeesModel model)
        {
            if (ModelState.IsValid)
            {
                model.fees.Update(userName);
                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Details(int id)
        {
            Fees fees = Fees.RetrieveById(userName, id);
            if (fees == null)
                return HttpNotFound();

            return View(new FeesModel(fees));
        }

        public ActionResult Delete(int id)
        {
            Fees fees = Fees.RetrieveById(userName, id);
            return View(new FeesModel(fees));
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Fees.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}