using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using UserTaskApp.BL;
namespace UserTaskApp.UI.Models
{
    public class TaskModel
    {
        private TaskApp _task;

        #region Props 
        [Display(Name = "I D")]
        
        public int Id { get { return _task.Id; } set { _task.Id = value; } }
        [Display(Name = "Title")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Title { get { return _task.Title; } set { _task.Title = value; } }

        [Display(Name = "Description")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Description { get { return _task.Description; } set { _task.Description = value; } }
        [Display(Name = "AssignedTo")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string AssignedTo { get { return _task.AssignedTo; } set { _task.AssignedTo = value; } }

        [Required]
        [Display(Name = "Status")]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Status
        {
            get { return _task.Status; }
            set { _task.Status = value; }
        }


        [Display(Name = "Created By")]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string CreatedBy { get { return _task.CreatedBy; } set { _task.CreatedBy = value; } }

        [Display(Name = "Created Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime CreatedDate { get { return _task.CreatedDate; } set { _task.CreatedDate = value; } }


        [Display(Name = "Modified By")]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string ModifiedBy { get { return _task.ModifiedBy; } set { _task.ModifiedBy = value; } }



        [Display(Name = "Modified Date")]

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime ModifiedDate { get { return _task.ModifiedDate; } set { _task.ModifiedDate = value; } }

        [Display(Name = "Is Deleted")] public bool IsDeleted { get { return _task.IsDeleted; } set { _task.IsDeleted = value; } }
        public TaskApp Task { get { return _task; } set { _task = value; } }
        #endregion //Props #region CTOR 
        public TaskModel() 
        { 
            _task = new TaskApp(); 
        }
        public TaskModel(TaskApp Task) 
        { 
            _task = Task; 
        } 
        
    }
}
