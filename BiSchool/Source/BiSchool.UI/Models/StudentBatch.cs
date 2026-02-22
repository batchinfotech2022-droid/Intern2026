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
        [Display(Name = "Batch ID")]
        public int BatchId
        {
            get { return studentBatch.Batchid; }
            set { studentBatch.Batchid = value; }
        }

        [Display(Name = "Batch Title")]
        public string BatchTitle
        {
            get { return studentBatch.Batchtitle; }
        }

        [Required]
        [Display(Name = "Student ID")]
        public int StudentId
        {
            get { return studentBatch.Studentid; }
            set { studentBatch.Studentid = value; }
        }

        [Display(Name = "Student Name")]
        public string StudentName
        {
            get { return studentBatch.Studentname; }
        }

        public DateTime CreatedDate => studentBatch.Createddate;
        public string CreatedBy => studentBatch.Createdby;
        public DateTime ModifiedDate => studentBatch.Modifieddate;
        public string ModifiedBy => studentBatch.Modifiedby;
    }
}