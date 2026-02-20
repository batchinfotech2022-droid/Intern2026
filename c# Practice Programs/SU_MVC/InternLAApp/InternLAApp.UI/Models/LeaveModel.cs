using System;
using System.ComponentModel.DataAnnotations;
using InternLAApp.BL;

namespace InternLAApp.UI.Models
{
    public class LeaveModel
    {
        private Leave _leave = new Leave();

        public int Id
        {
            get { return _leave.Id; }
            set { _leave.Id = value; }
        }

        [Required]
        [Display(Name = "Intern")]
        public int InternId
        {
            get { return _leave.InternId; }
            set { _leave.InternId = value; }
        }

        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "From Date")]
        public DateTime FromDate
        {
            get { return _leave.FromDate; }
            set { _leave.FromDate = value; }
        }

        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "To Date")]
        public DateTime ToDate
        {
            get { return _leave.ToDate; }
            set { _leave.ToDate = value; }
        }

        [Required]
        public string Reason
        {
            get { return _leave.Reason; }
            set { _leave.Reason = value; }
        }

        public string CreatedBy
        {
            get { return _leave.CreatedBy; }
            set { _leave.CreatedBy = value; }
        }

        public DateTime CreatedDate
        {
            get { return _leave.CreatedDate; }
            set { _leave.CreatedDate = value; }
        }

        public string ModifiedBy
        {
            get { return _leave.ModifiedBy; }
            set { _leave.ModifiedBy = value; }
        }

        public DateTime ModifiedDate
        {
            get { return _leave.ModifiedDate; }
            set { _leave.ModifiedDate = value; }
        }

        public bool IsDeleted
        {
            get { return _leave.IsDeleted; }
            set { _leave.IsDeleted = value; }
        }

        public Leave Leave
        {
            get { return _leave; }
            set { _leave = value; }
        }
    }
}