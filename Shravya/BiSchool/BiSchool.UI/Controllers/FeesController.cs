using BiSchool.BL;
using BiSchool.UI.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BiSchool.UI.Controllers
{
    public class FeesController : Controller
    {

        public ActionResult Create()
        {
            FeesViewModel model = new FeesViewModel();
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(FeesViewModel model)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    
                    Fees fees = new Fees();

                    Fees.Create("usrName",
                        model.StudentId,
                        model.Amount,
                        model.Date
                    );

                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError("", ex.Message);
                }
            }

            return View(model);
        }

        public ActionResult Index()
        {

           
            var feesList = Fees.RetrieveAll("Admin");

            var model = feesList.Select(f => new FeesViewModel
            {
                Id = f.Id,
                StudentId = f.StudentId,
                StudentName = f.StudentName,
                Amount = f.Amount,
                Date = f.Date
            }).ToList();

            return View(model);
        }

    }


}
