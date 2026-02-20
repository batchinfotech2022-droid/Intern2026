using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Interns_mvc.ViewModels
{
    public class Employee
    {
        private int _id;
        private string _name;
        private string _email;
        private int _phone;
        private decimal _salary;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        public int Phone
        {
            get { return _phone; }
            set { _phone = value; }
        }
        public decimal Salary
        {
            get { return _salary; }
            set { _salary = value; }
        }

        public string Section


        {
            get; set;
        }

        public List<SelectListItem> SectionList { get; set; }


        public Employee()
        {
            _id = 0;
            _name = "undefined";
            _email = "undefined";
            _phone = 0;
            _salary = 0;
            SectionList = new List<SelectListItem>();
        }

        public Employee(int id, string name, string email, int phone, decimal salary)
        {
            _id = id;
            _name = name;
            _email = email;
            _phone = phone;
            _salary = salary;

        }
    }
}