using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ContactManager.BL;
using Interns_mvc.Models;

namespace Interns_mvc.Controllers
{
    public class ActivityController : Controller
    {
        // GET: Activity
        public ActionResult Index()
        {
            return View(GetActivityModelList());
        }

        private IEnumerable<ActivityModel> GetActivityModelList()
        {
            
            List<ActivityModel> activityModelList=new List<ActivityModel>();
            foreach (Activity a in Activity.RetrieveAll() )
            {
                activityModelList.Add(new ActivityModel(a));
            }
            return activityModelList;
        }
    }
}