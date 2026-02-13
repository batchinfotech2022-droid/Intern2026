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
            return activityModelList
            .OrderBy(x => x.ActivityId)
            .ToList();
        }

        // GET: Activity/Create
        public ActionResult Create()
        {
            ActivityModel model = new ActivityModel(new Activity());
            return View(model);
        }

        [HttpPost]
        public ActionResult Create(ActivityModel model)
        {
            if (ModelState.IsValid)
            {
                Activity.Create(
                    model.Username,
                    model.Activityon,
                    model.ActivityItem,
                    model.Activitydate,
                    model.Issuccess,
                    model.Activitytext
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Edit(int id)
        {
            Activity activity = Activity.RetrieveById(id);

            if (activity == null)
                return HttpNotFound();

            ActivityModel model = new ActivityModel(activity);

            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(ActivityModel model)
        {
            if (ModelState.IsValid)
            {
                Activity activity = Activity.RetrieveById(model.ActivityId);

                activity.Username = model.Username;
                activity.Activityon = model.Activityon;
                activity.Activityitem = model.ActivityItem;
                activity.Activitydate = model.Activitydate;
                activity.Issuccess = model.Issuccess;
                activity.Activitytext = model.Activitytext;

                activity.Update();

                return RedirectToAction("Index");
            }

            return View(model);
        }

        public ActionResult Delete(int id)
        {
            Activity activity = Activity.RetrieveById(id);

            if (activity == null)
                return HttpNotFound();

            ActivityModel model = new ActivityModel(activity);

            return View(model);
        }

        [HttpPost]
        public ActionResult Delete(ActivityModel model)
        {
            Activity.Delete(model.ActivityId);

            return RedirectToAction("Index");
        }

        public ActionResult Details(int id)
        {
            Activity activity = Activity.RetrieveById(id);

            if (activity == null)
                return HttpNotFound();

            ActivityModel model = new ActivityModel(activity);

            return View(model);
        }



    }
}