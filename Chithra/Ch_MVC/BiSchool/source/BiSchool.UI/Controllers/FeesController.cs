using BiSchool.BL;
using BiSchool.UI.IDEncription;
using BiSchool.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BiSchool.UI.Controllers
{
    public class FeesController : Controller
    {
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
            public ActionResult Create(FeesModel model)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Fees.Create(usrName, model.StudentId, model.Amount, model.Date);

                return RedirectToAction("Index");
            }

        [EncryptedActionParameter]
        public ActionResult Edit(int id)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Fees f = Fees.RetrieveById(usrName, id);

                ViewBag.StudentList = new SelectList(Student.RetrieveAll(usrName), "Id", "FullName", f.StudentId);

                return View(new FeesModel(f));
            }

            [HttpPost]
        [EncryptedActionParameter]
        public ActionResult Edit(FeesModel model)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Fees f = Fees.RetrieveById(usrName, model.Id);

                f.StudentId = model.StudentId;
                f.Amount = model.Amount;
                f.Date = model.Date;

                f.ModifiedBy = usrName;
                f.ModifiedDate = DateTime.Now;

                f.Update(usrName);

                return RedirectToAction("Index");
            }
        [EncryptedActionParameter]

        public ActionResult Details(int id)
            {
                return View(new FeesModel(Fees.RetrieveById(Session["UserName"]?.ToString() ?? "System", id)));
            }

        [EncryptedActionParameter]
        public ActionResult Delete(int id)
            {
                return View(new FeesModel(Fees.RetrieveById(Session["UserName"]?.ToString() ?? "System", id)));
            }


            [HttpPost, ActionName("Delete")]
        [EncryptedActionParameter]
        public ActionResult DeleteConfirmed(int id)
            {
                Fees.Delete(Session["UserName"]?.ToString() ?? "System", id);
                return RedirectToAction("Index");
            }
        }
    }