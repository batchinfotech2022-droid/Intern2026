using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using BiSchool.BL;

namespace BiSchool.UI.Models
{
    public class FeesModel
    {
        private Fees _fees;

        [Display(Name = "Fees ID")]
        public int Id { get { return _fees.Id; } set { _fees.Id = value; } }

        [Required(ErrorMessage = "Student is required")]
        [Display(Name = "Student")]
        public int StudentId { get { return _fees.StudentId; } set { _fees.StudentId = value; } }
        [Required]
        [Display(Name = "Student Name")]
        public string StudentName { get { return _fees.StudentName; } set { _fees.StudentName = value; } }

        [Required(ErrorMessage = "Amount is required")]
        [Range(1, 1000000, ErrorMessage = "Amount must be greater than 0")]
        [Display(Name = "Amount")]
        [DataType(DataType.Currency)]
        public decimal Amount { get { return _fees.Amount; } set { _fees.Amount = value; } }

        [Required(ErrorMessage = "Date is required")]
        [DataType(DataType.Date)]
        [Display(Name = "Payment Date")]
        public DateTime Date { get { return _fees.Date; } set { _fees.Date = value; } }

        public string CreatedBy { get { return _fees.CreatedBy; } set { _fees.CreatedBy = value; } }

        public DateTime CreatedDate { get { return _fees.CreatedDate; } set { _fees.CreatedDate = value; } }


        public string ModifiedBy { get { return _fees.ModifiedBy; } set { _fees.ModifiedBy = value; } }


        public DateTime ModifiedDate { get { return _fees.ModifiedDate; } set { _fees.ModifiedDate = value; } }


        public bool IsDeleted { get { return _fees.IsDeleted; } set { _fees.IsDeleted = value; } }
        public Fees fees { get { return _fees; } set { _fees = value; } }

        public FeesModel()
        {
            _fees = new Fees();

        }
        public FeesModel(Batch batch)
        {
            _fees = fees;
        }
    }
}