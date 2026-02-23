using System;
using System.ComponentModel.DataAnnotations;
using BiSchool.BL;

namespace BiSchool.UI.Models
{
    public class StudentBatchModel
    {
        public StudentBatch studentBatch { get; set; }

        public StudentBatchModel()
        {
            studentBatch = new StudentBatch();
        }

        public StudentBatchModel(StudentBatch sb)
        {
            studentBatch = sb;
        }

        public int Id
        {
            get { return studentBatch.Id; }
            set { studentBatch.Id = value; }
        }

        [Required]
        [Display(Name = "Batch")]
        public int BatchId
        {
            get { return studentBatch.Batchid; }
            set { studentBatch.Batchid = value; }
        }

        [Display(Name = "Batch Title")]
        public string BatchTitle
        {
            get { return studentBatch.Batchtitle; }
            set { studentBatch.Batchtitle = value; }   
        }

        [Required]
        [Display(Name = "Student")]
        public int StudentId
        {
            get { return studentBatch.Studentid; }
            set { studentBatch.Studentid = value; }
        }

        [Display(Name = "Student Name")]
        public string StudentName
        {
            get { return studentBatch.Studentname; }
            set { studentBatch.Studentname = value; }
        }

        public DateTime CreatedDate
        {
            get { return studentBatch.Createddate; }
        }

        public string CreatedBy
        {
            get { return studentBatch.Createdby; }
        }

        public DateTime ModifiedDate
        {
            get { return studentBatch.Modifieddate; }
        }

        public string ModifiedBy
        {
            get { return studentBatch.Modifiedby; }
        }
    }
}