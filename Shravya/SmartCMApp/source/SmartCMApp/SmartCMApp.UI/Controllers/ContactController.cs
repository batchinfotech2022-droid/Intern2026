using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Microsoft.Ajax.Utilities;
using SmartCMApp.BL;
using SmartCMApp.UI.Models;
using SmartCMApp.UI.ViewModel;

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
            ContactModel model = new ContactModel();

            var categories = Category.RetrieveAll(userName)
                                     .Where(c => c.IsActive)
                                     .ToList();

            model.CategoryList = categories.Select(c =>
                new SelectListItem
                {
                    Text = c.CategoryName,
                    Value = c.Id.ToString()
                }).ToList();

            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ContactModel model)
        {
            if (!ModelState.IsValid)
            {
                var categories = Category.RetrieveAll(userName)
                                         .Where(c => c.IsActive)
                                         .ToList();

                model.CategoryList = categories.Select(c =>
                    new SelectListItem
                    {
                        Text = c.CategoryName,
                        Value = c.Id.ToString()
                    }).ToList();

                return View(model);
            }

            model.Role = "User"; // default role

            Contact.Create(
                model.FullName,
                model.Phone,
                model.City,
                model.CategoryId,
                model.UserName,
                model.PassWord,
                model.Role);

            return RedirectToAction("Index");
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

            var categories = Category.RetrieveAll(userName)
                                     .Where(c => c.IsActive)
                                     .ToList();

            model.CategoryList = categories.Select(c =>
                new SelectListItem
                {
                    Text = c.CategoryName,
                    Value = c.Id.ToString(),
                    Selected = (c.Id == model.CategoryId)
                }).ToList();

            return View(model);
        }
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Edit(ContactModel model)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        var categories = Category.RetrieveAll(userName)
        //                                 .Where(c => c.IsActive)
        //                                 .ToList();

        //        model.CategoryList = categories.Select(c =>
        //            new SelectListItem
        //            {
        //                Text = c.CategoryName,
        //                Value = c.Id.ToString(),
        //                Selected = (c.Id == model.CategoryId)
        //            }).ToList();

        //        return View(model);
        //    }

            

        //    Contact contact = new Contact();
        //    contact.Id = model.Id;
        //    contact.FullName = model.FullName;
        //    contact.UserName = model.UserName;
        //    contact.Phone = model.Phone;
        //    contact.City = model.City;
        //    contact.CategoryId = model.CategoryId;

        //    contact.Update(userName);

        //    return RedirectToAction("Index");
        //}

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ContactModel model)
        {
            if (!ModelState.IsValid)
            {
                var categories = Category.RetrieveAll(userName)
                                         .Where(c => c.IsActive)
                                         .ToList();

                model.CategoryList = categories.Select(c =>
                    new SelectListItem
                    {
                        Text = c.CategoryName,
                        Value = c.Id.ToString(),
                        Selected = (c.Id == model.CategoryId)
                    }).ToList();

                return View(model);
            }

            // 🔥 Retrieve first
            Contact existing = Contact.RetrieveById(userName, model.Id);

            existing.FullName = model.FullName;
            existing.UserName = model.UserName;
            existing.Phone = model.Phone;
            existing.City = model.City;
            existing.CategoryId = model.CategoryId;

            existing.Update(userName);

            return RedirectToAction("Index");
        }



    }
}

