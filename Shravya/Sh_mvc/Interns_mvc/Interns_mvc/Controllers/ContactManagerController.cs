using System;
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
            List<ContactManager> lstContact= ContactManager.ReadAll();
            List<ContactManagerViewModel> tempList = new List<ContactManagerViewModel>();

            foreach (ContactManager m in lstContact)
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
                ContactManager cnt=new ContactManager(newmodel);
                ContactManager.Create(cnt);
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
            ContactManager manager= ContactManager.ReadById(id);
            ContactManagerViewModel mdl = new ContactManagerViewModel(manager);
            return View(mdl);
        }
        public ActionResult Edit(int id)
        {
            ContactManager mng = ContactManager.ReadById(id);
            ContactManagerViewModel vmdl = new ContactManagerViewModel(mng);
            return View(vmdl);
        }

        [HttpPost]
        public ActionResult Edit(ContactManager model)
        {
            if (ModelState.IsValid)
            {
                // Get existing contact from data source using Id
                ContactManager contact = ContactManager.ReadById(model.Id);

                // Update properties from model
                contact.FirstName = model.FirstName;
                contact.LastName = model.LastName;
                contact.Email = model.Email;
                contact.Phone = model.Phone;
               

                // Save updated contact
                ContactManager.Update(contact);

                return RedirectToAction("Index");
            }

            return View(model);
        }

    }
}