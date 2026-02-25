using SmartCMApp.BL;
using SmartCMApp.UI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SmartCMApp.UI.Models;

namespace SmartCMApp.UI.Controllers
{
    [Authorize]
    public class CategoryController : Controller
    {
            private string userName = "Admin"; 
            public ActionResult Index()
            {
                var list = Category.RetrieveAll(userName);

                List<CategoryModel> modelList = new List<CategoryModel>();

                foreach (var item in list)
                {
                    modelList.Add(new CategoryModel(item));
                }

                return View(modelList);
            }

            public ActionResult Create()
            {
                return View(new CategoryModel());
            }

            [HttpPost]
            public ActionResult Create(CategoryModel model)
            {
                if (ModelState.IsValid)
                {
                    Category.Create(
                        userName,
                        model.CategoryName,
                        model.IsActive
                    );

                    return RedirectToAction("Index");
                }

                return View(model);
            }

            public ActionResult Edit(int id)
            {
                var category = Category.RetrieveById(userName, id);

                if (category == null)
                    return HttpNotFound();

                return View(new CategoryModel(category));
            }

            [HttpPost]
            public ActionResult Edit(CategoryModel model)
            {
                if (ModelState.IsValid)
                {
                string userName = "Admin";

                Category category = new Category();
                category.Id = model.Id;
                category.CategoryName = model.CategoryName;
                category.IsActive = model.IsActive;

                    

                    category.Update(userName);

                    return RedirectToAction("Index");
                }

                return View(model);
            }

            public ActionResult Delete(int id)
            {
                var category = Category.RetrieveById(userName, id);

                if (category == null)
                    return HttpNotFound();

                return View(new CategoryModel(category));
            }

            [HttpPost, ActionName("Delete")]
            public ActionResult DeleteConfirmed(int id)
            {
                Category.Delete(userName, id);

                return RedirectToAction("Index");
            }

            public ActionResult Details(int id)
            {
                var category = Category.RetrieveById(userName, id);

                if (category == null)
                    return HttpNotFound();

                return View(new CategoryModel(category));
            }
        }
    }


