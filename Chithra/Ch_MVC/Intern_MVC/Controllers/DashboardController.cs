
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Intern_MVC.ViewModels;


﻿using Intern_MVC.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
>>>>>>> 691ae65ad5ab9035bca2fcfd6707ae092725cd7f

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

            List<Employee> lstEmployees = new List<Employee>()
            {
                new Employee{Id=1,Name="Chithra",Email="chithraacharya@gmail.com",Phone="+919741917780",Address="Karkala"},
                new Employee{Id=2,Name="Sulaksha",Email="sulaksha@gmail.com",Phone="+919000000001",Address="Belvai"},
                new Employee{Id=3,Name="Shravya",Email="shravyakulal@gmail.com",Phone="+919065437780",Address="Parkala"},
                new Employee{Id=4,Name="Geetha",Email="geetha@gmail.com",Phone="+919000000002",Address="Sanoor"},
                new Employee{Id=5,Name="Latha",Email="geetha@gmail.com",Phone="+919000000002",Address="Sanoor"},
            };


            List<TaskMaster> lsttaskMasters = new List<TaskMaster>()
            {

                new TaskMaster { Id = 1, Title = "Build Dashboard", Description = "Create MVC dashboard", Created = DateTime.Now.AddDays(-3), Updated = DateTime.Now, Status = "Started" },
                new TaskMaster { Id = 2, Title = "Employee Module", Description = "Add employee form", Created = DateTime.Now.AddDays(-2), Updated = DateTime.Now, Status = "Ongoing" },
                new TaskMaster {Id = 3,Title = "Task Report", Description = "Show task counts",Created = DateTime.Now.AddDays(-1),Updated = DateTime.Now,Status = "Completed"}
            };

            string DummyCard = "Active Project";

            List<SelectListItem> SelectedList = new List<SelectListItem>
            {
                new SelectListItem{Text="Started",Value="Started"},
                new SelectListItem{Text="Ongoing",Value="Ongoing"},
                new SelectListItem{Text="Completed",Value="Completed"},

            };

            DashboardViewModel Model = new DashboardViewModel(lstEmployees, lsttaskMasters, DummyCard, SelectedList);

            return View(Model);
        }

        [HttpPost]
        public ActionResult AddEmployee(DashboardViewModel viewModel)
        {
            List<Employee> employees = new List<Employee>()
    {
        new Employee{Id=1,Name="Chithra"},
        new Employee{Id=2,Name="Sulaksha"}
    };

            employees.Add(new Employee
            {
                Id = viewModel.NewEmployeeId,
                Name = viewModel.NewEmployeeName,
                Email = viewModel.NewEmployeeEmail,
                Phone = viewModel.NewEmployeePhone,
                Address = viewModel.NewEmployeeAddress,
               
                
            });

            viewModel.Employees = employees;
            viewModel.TotalEmployees = employees.Count();

            viewModel.StatusList = new List<SelectListItem>()
{
    new SelectListItem{Text="Started",Value="Started"},
    new SelectListItem{Text="Ongoing",Value="Ongoing"},
    new SelectListItem{Text="Completed",Value="Completed"}
};




            return View("Index", viewModel);
        }
    }
    }

