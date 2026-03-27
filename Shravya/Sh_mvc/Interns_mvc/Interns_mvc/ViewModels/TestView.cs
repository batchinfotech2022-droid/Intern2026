using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Intern_MVC.ViewModels
{
    public class TestView
    {
        private int _id;
        private string _name;
        private bool _enabled;
        private decimal _salary;
        private string _language;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        [Required(ErrorMessage = "Name is required.")]
        [StringLength(100, ErrorMessage = "Name cannot exceed 100 characters.")]
        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public bool Enabled
        {
            get { return _enabled; }
            set { _enabled = value; }
        }

        [Required(ErrorMessage = "Salary is required.")]
        [Range(0, 1000000, ErrorMessage = "Salary must be between 0 and 1,000,000.")]
        [DataType(DataType.Currency)]
        public decimal Salary
        {
            get { return _salary; }
            set { _salary = value; }
        }
        public string Language
        {
            get { return _language; }
            set { _language = value; }
        }

        public IEnumerable<SelectListItem> LanguageList
        {
            get;
            set;
        }
        public TestView()
        {
            _enabled = true;
            _id = 0;
            _name = "undefined";
            _salary = 0.00m;
            _language = "undefined";

        }

        public TestView(int id, string name, decimal salary, bool enabled, string language)
        {
            _id = id;
            _name = name;
            _salary = salary;
            _enabled = true;
            _language = language;
        }

    }
}
