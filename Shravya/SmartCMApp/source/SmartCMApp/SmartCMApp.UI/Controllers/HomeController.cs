using SmartCMApp.BL;
using SmartCMApp.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartCMApp.UI.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
       

        public ActionResult Index()
        {
            string userName = "Admin";

            var contacts = Contact.RetrieveAll(userName);
            var categories = Category.RetrieveAll(userName);

            HomeModel model = new HomeModel();
            model.TotalContacts = contacts.Count;
            model.TotalCategories = categories.Count;
            model.ActiveContacts = contacts.Count;


            model.RecentContacts = contacts
                                .Take(5)
                                .Select(c => new ContactModel
                                {
                                    Id = c.Id,
                                    FullName = c.FullName,
                                    UserName = c.UserName,
                                    City = c.City,
                                    Phone = c.Phone
                                }).ToList();

            return View(model);
        }



    }
}