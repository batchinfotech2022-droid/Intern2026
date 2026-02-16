using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Intern_MVC.ViewModels;


namespace Intern_MVC.Controllers
{
    public class DashboardController : Controller
    {
        // GET: Dashboard
        public ActionResult Index()
        {


        List<Employee>lstEmployee = new List<Employee>()
    {
        new Employee{Id=1,Name="Chithra",Email="chithraacharya@gmail.com",Phone="+919741917780",Address="Karkala"},
        new Employee{Id=2,Name="Sulaksha",Email="sulaksha@gmail.com",Phone="+919000000001",Address="Belvai"},
        new Employee{Id=3,Name="Shravya",Email="shravyakulal@gmail.com",Phone="+919065437780",Address="Parkala"},
        new Employee{Id=4,Name="Geetha",Email="geetha@gmail.com",Phone="+919000000002",Address="Sanoor"},
    };

            List< TaskMaster>lstTaskMaster= new List<TaskMaster>()
    {
        new TaskMaster { Id = 1, Title = "Build Dashboard", Description = "Create MVC dashboard", Created = DateTime.Now.AddDays(-3), Updated = DateTime.Now, Status = "Started" },
        new TaskMaster { Id = 2, Title = "Employee Module", Description = "Add employee form", Created = DateTime.Now.AddDays(-2), Updated = DateTime.Now, Status = "Ongoing" },
        new TaskMaster { Id = 3, Title = "Task Report", Description = "Show task counts", Created = DateTime.Now.AddDays(-1), Updated = DateTime.Now, Status = "Completed" }
    };
            string DummyCard = "Active Project";
            List<SelectListItem> lstSelect = new List<SelectListItem>()
            {
                new SelectListItem{ Text="Started", Value="Started"},
                new SelectListItem{ Text="Ongoing", Value="Ongoing"},
                new SelectListItem{ Text="Completed", Value="Completed"}

            };
            DashboardViewModel Model = new DashboardViewModel(lstEmployee,lstTaskMaster,DummyCard,lstSelect);
            return View(Model);
        }

    }
}