using System.Collections.Generic;
using System.Web.Mvc;
using Interns_mvc.ViewModels;

namespace Interns_mvc.Controllers
{
    public class EmployeeController : Controller
    {
       
        public ActionResult Index()
        {
            int id = 0;
            string name = "Sam";
            int phoneNumber = 0;
            string email = "";
            decimal salary = 0.0m;
            Employee model = new Employee(id,name,email,phoneNumber,salary,GetSections());
            
            return View(model);
        }

        [HttpPost]
        public ActionResult Index(Employee model)
        {
            model.SectionList = GetSections(); 



            Employee employee = new Employee();

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
