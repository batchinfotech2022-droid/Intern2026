using Microsoft.AspNetCore.Mvc;

namespace Interns_MVC.Models
{
    public class Attendance : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
