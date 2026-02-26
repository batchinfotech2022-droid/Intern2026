
using Internsapp.BL;
using Internsapp.UI.Models;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Internsapp.UI.Controllers
{
    public class LeaveController : Controller
    {
        private string userName = "Admin";


        public ActionResult Index()
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            List<Leave> list = Leave.RetrieveAll(usrName);
            List<LeaveModel> modelList = new List<LeaveModel>();

            foreach (Leave l in list)
            {
                LeaveModel m = new LeaveModel(l);

                m.Id = l.Id;
                m.InternId = l.InternId;
                m.InternName = l.InternName;
                m.FromDate = l.FromDate;
                m.ToDate = l.ToDate;
                m.Reason = l.Reason;
                

                modelList.Add(m);
            }

            return View(modelList);
        }


        public ActionResult Create()
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            ViewBag.Interns = new SelectList(
                Intern.RetrieveAll(usrName),
                "Id",
                "UserName"
            );

            return View(new LeaveModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(LeaveModel model)
        {
            if (ModelState.IsValid)
            {
                Leave.Create(
                    userName,
                    model.InternId,
                    model.FromDate,
                    model.ToDate,
                    model.Reason
                );

                return RedirectToAction("Index");
            }

            return View(model);
        }

        

        //[EncryptedActionParameter]
        public ActionResult Edit(int id)
        {
            string usrName = Session["UserName"]?.ToString() ?? "System";

            Leave leave = Leave.RetrieveById(usrName, id);
            if (leave == null)
                return HttpNotFound();

            ViewBag.Interns = new SelectList(
                Intern.RetrieveAll(usrName),
                "Id",
                "UserName",
                leave.InternId
            );

            return View(new LeaveModel(leave));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        //[EncryptedActionParameter]
        public ActionResult Edit(LeaveModel model)
        {
            if (ModelState.IsValid)
            {
                model.Leave.Update(userName);
                return RedirectToAction("Index");
            }

            return View(model);
        }


        //[EncryptedActionParameter]
        public ActionResult Details(int id)
        {
            Leave leave = Leave.RetrieveById(userName, id);
            if (leave == null)
                return HttpNotFound();

            return View(new LeaveModel(leave));
        }


        //[EncryptedActionParameter]
        public ActionResult Delete(int id)
        {
            Leave leave = Leave.RetrieveById(userName, id);
            if (leave == null)
                return HttpNotFound();

            return View(new LeaveModel(leave));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        //[EncryptedActionParameter]
        [ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Leave.Delete(userName, id);
            return RedirectToAction("Index");
        }
    }
}