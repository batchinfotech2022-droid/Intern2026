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
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        [HttpGet]
        public JsonResult GetFeesChartData()
        {
            var data = new List<object>
    {
        new { Month = "Jan", Amount = 12000 },
        new { Month = "Feb", Amount = 18000 },
        new { Month = "Mar", Amount = 15000 },
        new { Month = "Apr", Amount = 22000 },
        new { Month = "May", Amount = 17000 },
        new { Month = "Jun", Amount = 25000 }
    };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}