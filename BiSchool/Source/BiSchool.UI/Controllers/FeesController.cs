using System.Collections.Generic;
using System.Web.Mvc;
using BiSchool.BL;
using BiSchool.UI.IDEncryption;
using BiSchool.UI.Models;

namespace BiSchool.UI.Controllers
{
    public class FeesController : Controller
    {
        private string userName = "Admin";

       
        public ActionResult Index()
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            List<Fees> fees = Fees.RetrieveAll(usrName);
            List<FeesModel> modelList = new List<FeesModel>();

            foreach (Fees f in fees)
            {
                FeesModel m = new FeesModel();

                m.Id = f.Id;
                m.StudentName = f.StudentName;
                m.Amount = f.Amount;
                m.Date = f.Date;

                modelList.Add(m);
            }

            return View(modelList);
        }


        public ActionResult Create()
        {
            ViewBag.StudentList = new SelectList(Student.RetrieveAll(Session["UserName"]?.ToString() ?? "System"), "Id", "FullName");
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

        [EncryptedActionParameter]
        public ActionResult Edit(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            Fees fees = Fees.RetrieveById(userName, id);
            if (fees == null)
                return HttpNotFound();

            ViewBag.StudentList = new SelectList(
                Student.RetrieveAll(usrName),
                "Id",
                "FullName",
                fees.StudentId   
            );

            return View(new FeesModel(fees));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [EncryptedActionParameter]
        public ActionResult Edit(FeesModel model)
        {
            if (ModelState.IsValid)
            {
                model.fees.Update(userName);
                return RedirectToAction("Index");
            }

            string usrName = Session["UserName"]?.ToString() ?? "System";

            ViewBag.StudentList = new SelectList(
                Student.RetrieveAll(usrName),
                "Id",
                "FullName",
                model.StudentId
            );

            return View(model);
        }

        [EncryptedActionParameter]
        public ActionResult Details(int id)
        {
            Fees fees = Fees.RetrieveById(userName, id);
            if (fees == null)
                return HttpNotFound();

            return View(new FeesModel(fees));
        }

        [EncryptedActionParameter]
        public ActionResult Delete(int id)
        {
            Fees fees = Fees.RetrieveById(userName, id);
            return View(new FeesModel(fees));
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [EncryptedActionParameter]
        public ActionResult DeleteConfirmed(int id)
        {
            Fees.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}