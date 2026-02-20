using Intern_MVC.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Intern_MVC.Models
{


    public class Tasks
    {
        private int _id;
        private string _title;
        private string _description;
        private DateTime _createdDate;
        private bool _isactive;

        public int Id { get { return _id; } set { _id = value; } }
        public string Title { get { return _title; } set { _title = value; } }
        public string Description { get { return _description; } set { _description = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public bool IsActive { get { return _isactive; } set { _isactive = value; } }

        public Tasks()
        {
            _id = 0;
            _title = "Undefined";
            _description = "Description";
            _createdDate = DateTime.Now;
            _isactive = false;
        }

        public Tasks(int Id, string Title, string Description, DateTime CreatedDate, bool IsActive)
        {
            _id = Id;
            _title = Title;
            _description = Description;
            _createdDate = CreatedDate;
            _isactive = IsActive;
        }
        public  Tasks(TaskViewModel newModel)
        {
            _id = newModel.Id;
            _title = newModel.Title;
            _description = newModel.Description;
            _createdDate = newModel.CreatedDate;
            _isactive = newModel.IsActive;
        }





        public static List<Tasks> DummyTasks = new List<Tasks>()
        {
            new Tasks(1, "Login Page", "Design login UI", DateTime.Now.AddDays(-5), true),
            new Tasks(2, "Registration", "Create signup form", DateTime.Now.AddDays(-4), true),
            new Tasks(3, "Dashboard", "Build dashboard layout", DateTime.Now.AddDays(-3), true),
            new Tasks(4, "Products", "Add product listing page", DateTime.Now.AddDays(-2), true),
            new Tasks(5, "Cart", "Implement shopping cart", DateTime.Now.AddDays(-1), false),
            new Tasks(6, "Checkout", "Payment integration", DateTime.Now, false),
            new Tasks(7, "Orders", "Order history page", DateTime.Now, true),
            new Tasks(8, "Profile", "User profile module", DateTime.Now, true),
            new Tasks(9, "Reports", "Admin reports", DateTime.Now, false),
            new Tasks(10, "Testing", "Bug testing", DateTime.Now, true)
        };

        public static List<Tasks> GetAllTasks()
        {
            return DummyTasks;
        }

        public static Tasks GetTaskById(int id)
        {
            return DummyTasks.FirstOrDefault(t => t.Id == id);
        }


        public static void AddOrUpdateTask(Tasks task)
        {
            var existingTask = DummyTasks.FirstOrDefault(t => t.Id == task.Id);

            if (existingTask == null)
            {
                // ADD (new task)
                task.Id = DummyTasks.Count > 0
                            ? DummyTasks.Max(t => t.Id) + 1
                            : 1;

                DummyTasks.Add(task);
            }
            else
            {
                // UPDATE (existing task)
                existingTask.Title = task.Title;
                existingTask.Description = task.Description;
                existingTask.CreatedDate = task.CreatedDate;
                existingTask.IsActive = task.IsActive;
            }
        }


        public static bool DeleteTask(int id)
        {
            var task = DummyTasks.FirstOrDefault(t => t.Id == id);

            if (task != null)
            {
                DummyTasks.Remove(task);
                return true;   // Deleted successfully
            }

            return false;      // Task not found
        }


    }
}