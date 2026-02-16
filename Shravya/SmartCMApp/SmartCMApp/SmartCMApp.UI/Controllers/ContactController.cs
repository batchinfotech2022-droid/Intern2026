using SmartCMApp.BL;
using SmartCMApp.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartCMApp.UI.Controllers
{
    public class ContactController : Controller
    {
        
            private string userName = "Admin";


        public ActionResult Index(string search, int? categoryId)
        {
            var list = Contact.RetrieveAll(userName);

            if (!string.IsNullOrEmpty(search))
            {
                list = list.Where(c =>
                    c.FullName.ToLower().Contains(search.ToLower()))
                    .ToList();
            }

            if (categoryId.HasValue)
            {
                list = list.Where(c => c.CategoryId == categoryId.Value)
                           .ToList();
            }

            // Load category dropdown
            var categories = Category.RetrieveAll(userName)
                                     .Where(c => c.IsActive)
                                     .ToList();

            ViewBag.CategoryList = categories.Select(c =>
                new SelectListItem
                {
                    Text = c.CategoryName,
                    Value = c.Id.ToString()
                }).ToList();

            List<ContactModel> modelList = new List<ContactModel>();

            foreach (var item in list)
            {
                modelList.Add(new ContactModel(item));
            }

            return View(modelList);
        }

        public ActionResult Create()
        {
            var categories = Category.RetrieveAll(userName)
                                     .Where(c => c.IsActive)
                                     .ToList();

            ViewBag.CategoryList = categories.Select(c =>
                new SelectListItem
                {
                    Text = c.CategoryName,
                    Value = c.Id.ToString()
                }).ToList();

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ContactModel model)
        {
            if (ModelState.IsValid)
            {
                Contact.Create(userName,
                               model.FullName,
                               model.Email,
                               model.Phone,
                               model.City,
                               model.CategoryId);

                return RedirectToAction("Index");
            }

            // Reload dropdown if validation fails
            var categories = Category.RetrieveAll(userName)
                                     .Where(c => c.IsActive)
                                     .ToList();

            ViewBag.CategoryList = categories.Select(c =>
                new SelectListItem
                {
                    Text = c.CategoryName,
                    Value = c.Id.ToString()
                }).ToList();

            return View(model);
        }
        public ActionResult Delete(int id)
        {
            var contact = Contact.RetrieveById(userName, id);

            if (contact == null)
                return HttpNotFound();

            ContactModel model = new ContactModel(contact);

            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Contact.Delete(userName, id);

            return RedirectToAction("Index");
        }
        public ActionResult Details(int id)
        {
            var contact = Contact.RetrieveById(userName, id);

            if (contact == null)
                return HttpNotFound();

            ContactModel model = new ContactModel(contact);

            return View(model);
        }
        public ActionResult Edit(int id)
        {
            var contact = Contact.RetrieveById(userName, id);

            if (contact == null)
                return HttpNotFound();

            ContactModel model = new ContactModel(contact);

            ViewBag.CategoryList = new SelectList(
                Category.RetrieveAll(userName),
                "Id",
                "CategoryName",
                model.CategoryId);

            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ContactModel model)
        {
            if (ModelState.IsValid)
            {
                string userName = "Admin";

                Contact contact = new Contact();
                contact.Id = model.Id;
                contact.FullName = model.FullName;
                contact.Email = model.Email;
                contact.Phone = model.Phone;
                contact.City = model.City;
                contact.CategoryId = model.CategoryId;

                contact.Update(userName);

                return RedirectToAction("Index");
            }

            return View(model);
        }



    }
}

