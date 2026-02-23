using BiSchool.BL;
using BiSchool.UI.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BiSchool.UI.Controllers
{
    public class HomeController : Controller
    {

        public ActionResult Index()
        {
            var model = new HomeViewModel
            {
                TotalStudents = Student.RetrieveAll("Admin").Count(),
                TotalFees = Fees.RetrieveAll("Admin").Count(),
                TotalBatches = Batch.RetrieveAll("Admin").Count()
            };

            return View(model);
        }
    }
    }
