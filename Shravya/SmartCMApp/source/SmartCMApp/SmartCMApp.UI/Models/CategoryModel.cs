using SmartCMApp.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartCMApp.UI.Models
{
    public class CategoryModel
    {
            private Category _category;

            public int Id
            {
                get { return _category.Id; }
                set { _category.Id = value; }
            }

            public string CategoryName
            {
                get { return _category.CategoryName; }
                set { _category.CategoryName = value; }
            }

            public bool IsActive
            {
                get { return _category.IsActive; }
                set { _category.IsActive = value; }
            }

            public Category Category
            {
                get { return _category; }
                set { _category = value; }
            }

            public CategoryModel()
            {
                _category = new Category();
            }

            public CategoryModel(Category category)
            {
                _category = category;
            }
        }
    }

