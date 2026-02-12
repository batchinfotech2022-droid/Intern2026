using Intern_MVC.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Intern_MVC.ViewModels
{
    public class TaskViewModel
    {

       
        private int _id;
        private string _title;
        private string _description;
        private DateTime _createdDate;
        private bool _isactive;


        [Required]
        [Display(Name = "Task id")]
        public int Id { get { return _id; } set { _id = value; } }

        [Required(ErrorMessage ="Title is Required")]
        [StringLength(100)]
        [Display(Name ="Task Title")]
        public string Title { get { return _title; } set { _title = value; } }

        [Required]
        [StringLength(500,ErrorMessage ="Description cannot exceed 500 character")]
        [Display(Name = "Task Description")]
        public string Description { get { return _description; } set { _description = value; } }

        [Required]
        [DataType(DataType.Date)]
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }

        [Required]
        [Display(Name = "Active")]
        public bool IsActive { get { return _isactive; } set { _isactive = value; } }

        public TaskViewModel()
        {
            _id = 0;
            _title = "Undefined";
            _description = "Description";
            _createdDate = DateTime.Now;
            _isactive = false;
        }

        public TaskViewModel(int Id, string Title, string Description, DateTime CreatedDate, bool IsActive)
        {
            _id = Id;
            _title = Title;
            _description = Description;
            _createdDate = CreatedDate;
            _isactive = IsActive;
        }
        public TaskViewModel(Tasks Tasks)
        {
            _id = Tasks.Id;
            _title = Tasks.Title;
            _description = Tasks.Description;
            _createdDate = CreatedDate;
            _isactive = Tasks.IsActive;
        }
        




    }
}