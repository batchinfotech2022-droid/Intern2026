using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Interns_MVC.ViewModels;
using Interns_MVC.Models;

namespace Interns_MVC.Controllers
{
    public class DashboardController : Controller
    {

        public ActionResult Index()
        {



            List<Attendance> lstAttendance = new List<Attendance>()
            {

                new Attendance { Id = 1, Name = "Rahul",    Day = "Monday",    Status = "Present", IsPresent = true },
                new Attendance { Id = 2, Name = "Anita",    Day = "Monday",    Status = "Absent",  IsPresent = false },
                new Attendance { Id = 3, Name = "Suresh",   Day = "Tuesday",   Status = "Present", IsPresent = true },
                new Attendance { Id = 4, Name = "Priya",    Day = "Tuesday",   Status = "Late",    IsPresent = true },
                new Attendance { Id = 5, Name = "Kiran",    Day = "Wednesday", Status = "Absent",  IsPresent = false },
                new Attendance { Id = 6, Name = "Meena",    Day = "Wednesday", Status = "Present", IsPresent = true },
                new Attendance { Id = 7, Name = "Arjun",    Day = "Thursday",  Status = "Half Day",IsPresent = true },
                new Attendance { Id = 8, Name = "Neha",     Day = "Thursday",  Status = "Absent",  IsPresent = false },
                new Attendance { Id = 9, Name = "Vijay",    Day = "Friday",    Status = "Present", IsPresent = true },
                new Attendance { Id =10, Name = "Pooja",    Day = "Friday",    Status = "On Leave",IsPresent = false }
            };

            List<SelectListItem> lstSelectListItem = new List<SelectListItem>()
            {
                new SelectListItem{ Text="All", Value="All"},
                new SelectListItem{ Text="Monday", Value="Monday"},
                new SelectListItem{ Text="Tuesday", Value="Tuesday"},
                new SelectListItem{ Text="Wednesday", Value="Wednesday"},
                new SelectListItem{ Text="Thursday", Value="Thrusday"},
                new SelectListItem{ Text="Friday", Value="Friday"},
                new SelectListItem{ Text="Saturday", Value="Saturday"}
            };
            DashboardViewModel model = new DashboardViewModel( lstAttendance,lstSelectListItem);

            return View(model);
        }




        public ActionResult Create()
        {
            return View();
        }



    }
}
