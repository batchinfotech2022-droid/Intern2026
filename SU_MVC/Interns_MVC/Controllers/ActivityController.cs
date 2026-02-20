using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Intern_MVC.Models;
using Interns_MVC.Models;
using AttendanceTracker.BL;

namespace Intern_MVC.Controllers
{
    public class ActivityController : Controller
    {
        
        public ActionResult Index()
        {
            return View(GetActivityModelList());
        }

        private IEnumerable<ActivityModel> GetActivityModelList()
        {
             List<ActivityModel> list = new List<ActivityModel>();

            foreach (Activity a in Activity.RetrieveAll()
                            .OrderBy(a => a.Activityid))  
            {
                list.Add(new ActivityModel(a));
            }

            return list;
        }

        
        public ActionResult Create()
        {
            return View(new ActivityModel());
        }

        
        [HttpPost]
        public ActionResult Create(ActivityModel model)
        {
            if (ModelState.IsValid)
            {
                Activity.Create(
                    model.Username,
                    model.Activityon,
                    model.Activityitem,
                    model.Activitydate,
                    model.Issuccess,
                    model.Activitytext
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }

        
        public ActionResult Details(int id)
        {
            Activity activity = Activity.RetrieveById(id);
            return View(new ActivityModel(activity));
        }

           public ActionResult Edit(int id)
        {
            Activity activity = Activity.RetrieveById(id);
            return View(new ActivityModel(activity));
        }

        
        [HttpPost]
        public ActionResult Edit(ActivityModel model)
        {
            if (ModelState.IsValid)
            {
                model.activity.Update();
                return RedirectToAction("Index");
            }

            return View(model);
        }

        
        public ActionResult Delete(int id)
        {
            Activity activity = Activity.RetrieveById(id);
            return View(new ActivityModel(activity));
        }

        
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            Activity.Delete(id);
            return RedirectToAction("Index");
        }
    }
}