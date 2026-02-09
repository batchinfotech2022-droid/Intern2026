using System.Collections.Generic;
using System.Web.Mvc;
using Interns_mvc.ViewModels;

namespace Interns_mvc.Controllers
{
    public class EmployeeController : Controller
    {

        public ActionResult Index()
        {
            Employee model = new Employee();
            model.SectionList = GetSections();

            return View(model);
        }

        [HttpPost]
        public ActionResult Index(Employee model)
        {
            model.SectionList = GetSections();

            if (ModelState.IsValid)
            {
                ViewBag.Message = "Selected Section: " + model.Section;
            }

            return View(model);
        }


        private List<SelectListItem> GetSections()
        {
            return new List<SelectListItem>
            {
                new SelectListItem { Text = "-- Select Section --", Value = "" },
                new SelectListItem { Text = "Section A", Value = "A" },
                new SelectListItem { Text = "Section B", Value = "B" },
                new SelectListItem { Text = "Section C", Value = "C" }
            };
        }
    }
}
