using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using BiSchool.BL;
using BiSchool.UI.Models;

namespace BiSchool.UI.Controllers
{
    public class BatchController : Controller
    {
        private string userName = "Admin";

        public ActionResult Index()
        {
            List<BatchModel> list = new List<BatchModel>();

            foreach (Batch b in Batch.RetrieveAll(userName))
            {
                list.Add(new BatchModel(b));
            }

            return View(list);
        }

        public ActionResult Create()
        {
            return View(new BatchModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(BatchModel model)
        {
            if (ModelState.IsValid)
            {
                Batch.Create(
                    userName,
                    model.Title,
                    model.Timing,
                    model.Subject
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Edit(int id)
        {
            Batch batch = Batch.RetrieveById(userName, id);
            return View(new BatchModel(batch));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(BatchModel model)
        {
            if (ModelState.IsValid)
            {
                model.batch.Update(userName);
                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Delete(int id)
        {
            Batch batch = Batch.RetrieveById(userName, id);
            return View(new BatchModel(batch));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Batch.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}