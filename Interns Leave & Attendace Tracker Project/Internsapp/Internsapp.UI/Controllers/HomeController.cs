using System;
using System.Web.Mvc;

namespace Internsapp.UI.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            if (Session["UserName"] == null)
            {
                return RedirectToAction("Login", "Intern");
            }

            return View();
        }
    }
}