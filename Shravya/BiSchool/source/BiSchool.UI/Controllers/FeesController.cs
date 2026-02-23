using BiSchool.BL;
using BiSchool.UI.IDEncryption;
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
        private string userName = "Admin";
        public ActionResult Index()
        {
            var feesList = Fees.RetrieveAll(userName);

            List<FeesViewModel> model = new List<FeesViewModel>();

            foreach (Fees f in feesList)
            {
                model.Add(new FeesViewModel
                {
                    Id = f.Id,
                    StudentId = f.StudentId,
                    StudentName = f.StudentName,
                    Amount = f.Amount,
                    Date = f.Date
                });
            }

            return View(model);
        }
        public ActionResult Create()
        {
            FeesViewModel model = new FeesViewModel();

            var students = Student.RetrieveAll(userName);

            model.Students = students.Select(s => new SelectListItem
            {
                Value = s.Id.ToString(),
                Text = s.FullName
            });

            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(FeesViewModel model)
        {
            if (ModelState.IsValid)
            {
                Fees.Create(
    userName,
    model.StudentId,
    model.Amount,
    model.Date.Value
);

                return RedirectToAction("Index");
            }

            // If validation fails reload dropdown
            var students = Student.RetrieveAll(userName);

            model.Students = students.Select(s => new SelectListItem
            {
                Value = s.Id.ToString(),
                Text = s.FullName
            });

            return View(model);
        }


        [EncryptedActionParameter]
        public ActionResult Edit(int id)
        {
            var fee = Fees.RetrieveById( userName,id);

            if (fee == null)
                return HttpNotFound();

            FeesViewModel model = new FeesViewModel
            {
                Id = fee.Id,
                StudentId = fee.StudentId,
                Amount = fee.Amount,
                Date = fee.Date
            };

            // Load student dropdown
            var students = Student.RetrieveAll(userName);

            model.Students = students.Select(s => new SelectListItem
            {
                Value = s.Id.ToString(),
                Text = s.FullName,
                Selected = (s.Id == model.StudentId)
            });

            return View(model);
        }



        [HttpPost]
        [ValidateAntiForgeryToken]
        [EncryptedActionParameter]
        public ActionResult Edit(FeesViewModel model)
        {
            if (ModelState.IsValid)
            {
                var fees = new Fees
                {
                    Id = model.Id,
                    StudentId = model.StudentId,
                    Amount = model.Amount,
                    Date = model.Date.Value,
                    ModifiedBy = userName,
                    ModifiedDate = DateTime.Now,
                    IsDeleted = false
                };

                fees.Update(userName);

                return RedirectToAction("Index");
            }

            // reload dropdown if validation fails
            var students = Student.RetrieveAll(userName);
            model.Students = students.Select(s => new SelectListItem
            {
                Value = s.Id.ToString(),
                Text = s.FullName,
                Selected = (s.Id == model.StudentId)
            });

            return View(model);
        }

        [EncryptedActionParameter]
        public ActionResult Details(int id)
        {
            var fee = Fees.RetrieveById( userName,id);

            if (fee == null)
                return HttpNotFound();

            FeesViewModel model = new FeesViewModel
            {
                Id = fee.Id,
                StudentId = fee.StudentId,
                StudentName = fee.StudentName,
                Amount = fee.Amount,
                Date = fee.Date
            };

            return View(model);
        }

        [EncryptedActionParameter]
        public ActionResult Delete(int id)
        {
            var fee = Fees.RetrieveById( userName,id);

            if (fee == null)
                return HttpNotFound();

            FeesViewModel model = new FeesViewModel
            {
                Id = fee.Id,
                StudentName = fee.StudentName,
                Amount = fee.Amount,
                Date = fee.Date
            };

            return View(model);
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
