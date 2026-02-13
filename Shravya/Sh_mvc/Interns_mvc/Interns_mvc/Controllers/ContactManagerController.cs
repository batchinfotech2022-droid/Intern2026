
﻿using Interns_mvc.Models;

﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
using Intern_MVC.ViewModels;
using Interns_mvc.Models;

using Interns_mvc.ViewModels;

namespace Interns_mvc.Controllers
{
    public class ContactManagerController : Controller
    {
        // GET: ContactManager
        public ActionResult Index()
        {

            List<ContactManager> lstContact = ContactManager.ReadAll();

            List<DummyContactManager> lstContact= DummyContactManager.ReadAll();

            List<ContactManagerViewModel> tempList = new List<ContactManagerViewModel>();

            foreach (DummyContactManager m in lstContact)
            {
                ContactManagerViewModel model = new ContactManagerViewModel(m);
                tempList.Add(model);
            }
            IEnumerable<ContactManagerViewModel> lstviewcontact = tempList;

            return View(lstviewcontact);
        }

        public ActionResult Create()
        {
            ContactManagerViewModel cmodel = new ContactManagerViewModel();

            return View(cmodel);
        }

        [HttpPost]

        public ActionResult Create(ContactManagerViewModel newmodel)
        {
            if (ModelState.IsValid)
            {
                newmodel.Id = 50;

                ContactManager cnt = new ContactManager(newmodel);
                ContactManager.Create(cnt);

                DummyContactManager cnt=new DummyContactManager(newmodel);
                DummyContactManager.Create(cnt);

                TempData["success"] = "Contact created successfully";
                return RedirectToAction("Index");
            }
            if (!ModelState.IsValid)
            {
                TempData["error"] = "Error";

            }
            return RedirectToAction("Create");
        }

        public ActionResult View(int id)
        {

            ContactManager manager = ContactManager.ReadById(id);

            DummyContactManager manager= DummyContactManager.ReadById(id);

            ContactManagerViewModel mdl = new ContactManagerViewModel(manager);
            return View(mdl);
        }
        public ActionResult Edit(int id)
        {
            DummyContactManager mng = DummyContactManager.ReadById(id);
            ContactManagerViewModel vmdl = new ContactManagerViewModel(mng);
            return View(vmdl);
        }

        [HttpPost]
        public ActionResult Edit(DummyContactManager model)
        {

            ContactManager.Update(mngss);

            return View();

            if (ModelState.IsValid)
            {
                // Get existing contact from data source using Id
                DummyContactManager contact = DummyContactManager.ReadById(model.Id);

                // Update properties from model
                contact.FirstName = model.FirstName;
                contact.LastName = model.LastName;
                contact.Email = model.Email;
                contact.Phone = model.Phone;
               

                // Save updated contact
                DummyContactManager.Update(contact);

                return RedirectToAction("Index");
            }

            return View(model);

        }

        public ActionResult Delete(int id)
        {
            var contact = DummyContactManager.ReadById(id);

            if (contact == null)
                return HttpNotFound();

            ContactManagerViewModel model = new ContactManagerViewModel
            {
                Id = contact.Id,
                FirstName = contact.FirstName,
                LastName = contact.LastName,
                Email = contact.Email,
                Phone = contact.Phone
            };

            return View(model);
        }



        [HttpPost]
        public ActionResult Delete(ContactManagerViewModel model)
        {
            var contact = DummyContactManager.ReadById(model.Id);
            if (contact != null)
            {
                DummyContactManager.Delete(model.Id);
            }

            return RedirectToAction("Index");
        }



    }
}