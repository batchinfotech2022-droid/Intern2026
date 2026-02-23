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
        public JsonResult GetStudentChartData()
        {
            // Dummy dictionary (Label, Value)
            Dictionary<string, int> data = new Dictionary<string, int>();

            data.Add("Class A", 10);
            data.Add("Class B", 8);
            data.Add("Class C", 12);
            data.Add("Class D", 6);

            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}