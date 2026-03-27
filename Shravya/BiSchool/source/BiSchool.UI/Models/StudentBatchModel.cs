using BiSchool.BL;
using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace BiSchool.UI.Models
{
    public class StudentBatchModel
    {
        private StudentBatch _studentBatch;

        public StudentBatchModel()
        {
            _studentBatch = new StudentBatch();
        }

        public StudentBatchModel(StudentBatch sb)
        {
            _studentBatch = sb;
        }

        public StudentBatch studentBatch
        {
            get { return _studentBatch; }
            set { _studentBatch = value; }
        }

        [DisplayName("ID")]
        public int Id
        {
            get { return _studentBatch.Id; }
            set { _studentBatch.Id = value; }
        }

        [Display(Name = "Batch")]
        [Required]
        public int BatchId
        {
            get { return _studentBatch.Batchid; }
            set { _studentBatch.Batchid = value; }
        }

        [Display(Name = "Batch Title")]
        public string BatchTitle
        {
            get { return _studentBatch.Batchtitle; }
            set { _studentBatch.Batchtitle = value; }
        }

        [Display(Name = "Student")]
        [Required]
        public int StudentId
        {
            get { return _studentBatch.Studentid; }
            set { _studentBatch.Studentid = value; }
        }

        [Display(Name = "Student Name")]
        public string StudentName
        {
            get { return _studentBatch.Studentname; }
            set { _studentBatch.Studentname = value; }
        }

        public DateTime CreatedDate
        {
            get { return _studentBatch.Createddate; }
            set { _studentBatch.Createddate = value; }
        }

        public string CreatedBy
        {
            get { return _studentBatch.Createdby; }
            set { _studentBatch.Createdby = value; }
        }

        public DateTime ModifiedDate
        {
            get { return _studentBatch.Modifieddate; }
            set { _studentBatch.Modifieddate = value; }
        }

        public string ModifiedBy
        {
            get { return _studentBatch.Modifiedby; }
            set { _studentBatch.Modifiedby = value; }
        }

        public bool IsDeleted
        {
            get { return _studentBatch.Isdeleted; }
            set { _studentBatch.Isdeleted = value; }
        }
    }
}