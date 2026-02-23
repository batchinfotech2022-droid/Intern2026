using BiSchool.BL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace BiSchool.UI.Models
{
    public class FeesModel
    {

        private Fees _fees;

        [DisplayName("ID")]
        public int Id { get { return _fees.Id; } set { _fees.Id = value; } }

        [Display(Name = "Student")]
        [Required]
        public int StudentId { get { return _fees.StudentId; } set { _fees.StudentId = value; } }

        [Display(Name = "Student Name")]
        public string StudentName { get { return _fees.StudentName; } set { _fees.StudentName = value; } }

        [Display(Name = "Amount")]
        [Required]
        public decimal Amount { get { return _fees.Amount; } set { _fees.Amount = value; } }

        [Display(Name = "Date")]
        [Required]
        [DataType(DataType.Date)]
        public DateTime Date { get { return _fees.Date; } set { _fees.Date = value; } }

        public string CreatedBy { get { return _fees.CreatedBy; } set { _fees.CreatedBy = value; } }

        public DateTime CreatedDate { get { return _fees.CreatedDate; } set { _fees.CreatedDate = value; } }

        public string ModifiedBy { get { return _fees.ModifiedBy; } set { _fees.ModifiedBy = value; } }

        public DateTime ModifiedDate { get { return _fees.ModifiedDate; } set { _fees.ModifiedDate = value; } }

        public bool IsDeleted { get { return _fees.IsDeleted; } set { _fees.IsDeleted = value; } }

        public Fees Fees { get { return _fees; } set { _fees = value; } }

        public FeesModel()
        {
            _fees = new Fees();
        }

        public FeesModel(Fees fees)
        {
            _fees = fees;
        }
    }
}