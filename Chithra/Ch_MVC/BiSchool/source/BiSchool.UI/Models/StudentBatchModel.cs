using BiSchool.BL;
using BiSchool.UI.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace BiSchool.UI.Models
{
    public class StudentBatchModel
    {
        private StudentBatch _studentBatch;

        [DisplayName("ID")]
        public int Id { get { return _studentBatch.Id; } set { _studentBatch.Id = value; } }

        [Display(Name = "Batch")]
        [Required]
        public int BatchId { get { return _studentBatch.BatchId; } set { _studentBatch.BatchId = value; } }

        [Display(Name = "Batch Title")]
        public string BatchTitle { get { return _studentBatch.BatchTitle; } set { _studentBatch.BatchTitle = value; } }

        [Display(Name = "Student")]
        [Required]
        public int StudentId { get { return _studentBatch.StudentId; } set { _studentBatch.StudentId = value; } }

        [Display(Name = "Student Name")]
        public string StudentName { get { return _studentBatch.StudentName; } set { _studentBatch.StudentName = value; } }

        public string CreatedBy { get { return _studentBatch.CreatedBy; } set { _studentBatch.CreatedBy = value; } }

        public DateTime CreatedDate { get { return _studentBatch.CreatedDate; } set { _studentBatch.CreatedDate = value; } }

        public string ModifiedBy { get { return _studentBatch.ModifiedBy; } set { _studentBatch.ModifiedBy = value; } }

        public DateTime ModifiedDate { get { return _studentBatch.ModifiedDate; } set { _studentBatch.ModifiedDate = value; } }

        public bool IsDeleted { get { return _studentBatch.IsDeleted; } set { _studentBatch.IsDeleted = value; } }

        public StudentBatch studentBatch
        {
            get { return _studentBatch; }
            set { _studentBatch = value; }
        }

        public StudentBatchModel()
        {
            _studentBatch = new StudentBatch();
        }

        public StudentBatchModel(StudentBatch StudentBatch)
        {
            _studentBatch = studentBatch;
        }
    }
}
