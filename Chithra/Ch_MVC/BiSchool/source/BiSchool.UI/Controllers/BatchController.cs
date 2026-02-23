using BiSchool.BL;
using BiSchool.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BiSchool.UI.Controllers
{
    public class BatchController : Controller
    {
            public ActionResult Index()
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                List<Batch> batches = Batch.RetrieveAll(usrName);
                List<BatchModel> modelList = new List<BatchModel>();

                foreach (Batch b in batches)
                {
                    BatchModel m = new BatchModel();

                    m.Id = b.Id;
                    m.Title = b.Title;
                    m.Timing = b.Timing;
                    m.Subject = b.Subject;

                    modelList.Add(m);
                }

                return View(modelList);
            }

            public ActionResult Create()
            {
                return View(new BatchModel());
            }

            [HttpPost]
            public ActionResult Create(BatchModel model)
            {
                if (ModelState.IsValid)
                {
                    string usrName = Session["UserName"]?.ToString() ?? "System";

                    Batch.Create(usrName, model.Title, model.Timing, model.Subject);

                    return RedirectToAction("Index");
                }

                return View(model);
            }

            public ActionResult Edit(int id)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Batch b = Batch.RetrieveById(usrName, id);

                BatchModel model = new BatchModel
                {
                    Id = b.Id,
                    Title = b.Title,
                    Timing = b.Timing,
                    Subject = b.Subject,
                    CreatedBy = b.CreatedBy,
                    CreatedDate = b.CreatedDate,
                    ModifiedBy = b.ModifiedBy,
                    ModifiedDate = b.ModifiedDate,
                    IsDeleted = b.IsDeleted
                };

                return View(model);
            }

            [HttpPost]
            public ActionResult Edit(BatchModel model)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Batch b = Batch.RetrieveById(usrName, model.Id);

                b.Title = model.Title;
                b.Timing = model.Timing;
                b.Subject = model.Subject;

                b.CreatedBy = model.CreatedBy;
                b.CreatedDate = model.CreatedDate;

                b.ModifiedBy = usrName;
                b.ModifiedDate = DateTime.Now;
                b.IsDeleted = model.IsDeleted;

                b.Update(usrName);

                return RedirectToAction("Index");
            }

            public ActionResult Details(int id)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Batch b = Batch.RetrieveById(usrName, id);

                return View(new BatchModel(b));
            }

            public ActionResult Delete(int? id)
            {
                if (id == null)
                    return RedirectToAction("Index");

                string usrName = Session["UserName"]?.ToString() ?? "System";

                Batch b = Batch.RetrieveById(usrName, id.Value);

                return View(new BatchModel(b));
            }

            [HttpPost, ActionName("Delete")]
            public ActionResult DeleteConfirmed(int id)
            {
                string usrName = Session["UserName"]?.ToString() ?? "System";

                Batch.Delete(usrName, id);

                return RedirectToAction("Index");
            }
        }
    }