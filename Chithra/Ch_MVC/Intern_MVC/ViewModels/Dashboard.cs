using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Intern_MVC.ViewModels

    {
        public class Employee
        {
            private int _id;
            private string _name;
            private string _email;
            private string _phone;
            private string _address;

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
            public string Phone
            {
                get { return _phone; }
                set { _phone = value; }
            }
            public string Address
            {
                get { return _address; }
                set { _address = value; }
            }

            public Employee()
            {
                _id = 0;
                _name = "undefined";
                _email = "undefined";
                _phone = " undefined";
                _address = "undefined";
            }
        }

        public class TaskMaster
        {
            private int _id;
            private string _title;
            private string _description;
            private DateTime _created;
            private DateTime _updated;
            private string _status;

            public int Id { get { return _id; } set { _id = value; } }
            public string Title { get { return _title; } set { _title = value; } }
            public string Description { get { return _description; } set { _description = value; } }
            public DateTime Created { get { return _created; } set { _created = value; } }
            public DateTime Updated { get { return _updated; } set { _updated = value; } }
            public string Status { get { return _status; } set { _status = value; } }
            public TaskMaster()
            {
                _id = 0;
                _title = "undefined";
                _description = "undefined";
                _created = DateTime.Now;
                _updated = DateTime.Now;
                _status = "undefined";
            }
        }
        public class DashboardViewModel
        {

            public List<Employee> Employees { get; set; }
            public List<TaskMaster> Tasks { get; set; }
            public string DummyCard { get; set; }

            public int TotalEmployees { get; set; }
            public int TotalTasks { get; set; }
            public string Status { get; set; }
            public IEnumerable<SelectListItem> StatusList { get; set; }


            public DashboardViewModel()
            {

            }
            public DashboardViewModel(List<Employee> employees, List<TaskMaster> tasks, string dummyCard, IEnumerable<SelectListItem> statusList)
            {
                Employees = employees;
                Tasks = tasks;
                DummyCard = dummyCard;
                StatusList = statusList;
                TotalEmployees = employees.Count();
                TotalTasks = tasks.Count();
            }
        }
    }

}