using Intern_MVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TaskIssueTracker.BL;

namespace Intern_MVC.Controllers
{
    public class ActivityController : Controller
    {
        // GET: Activity
        public ActionResult Index(int pageIndex=0)
        {

            return View(GetActivityModelList());
        }
        private IEnumerable<ActivityModel>GetActivityModelList()
        {
            int pageSize = 20;
            List<ActivityModel> activityModelList = new List<ActivityModel>();
            foreach(Activity a in Activity.RetrieveAll())
            {
                activityModelList.Add(new ActivityModel(a));
            }
            return activityModelList;
        }

    }
}