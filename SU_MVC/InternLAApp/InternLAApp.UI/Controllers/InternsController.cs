using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InternLAApp.UI.Controllers
{
    public class InternsController : Controller
    {
        // GET: Interns
        public ActionResult Index()
        {
            return View();
        }
    }
}