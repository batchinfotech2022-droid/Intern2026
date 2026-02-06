using System.Web.Mvc;
using Interns_mvc.ViewModels;

namespace Interns_mvc.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account/Login
        public ActionResult Login()
        {
            return View(new LoginViewModel());
        }

        // POST: Account/Login
        [HttpPost]
        public ActionResult Login(LoginViewModel model)
        {
            if (ModelState.IsValid)
            {
                // Demo validation
                if (model.Username == "admin" && model.Password == "1234")
                {
                    ViewBag.Message = "Login Successful!";
                }
                else
                {
                    ViewBag.Message = "Invalid Username or Password";
                }
            }
            return View(model);
        }
    }
}
