using System;
using System.ComponentModel.DataAnnotations;
using Internsapp.BL;

namespace Internsapp.UI.Models
{
    public class LeaveModel
    {
        private Leave _leave;

        [Display(Name = "Leave ID")]
        public int Id { get { return _leave.Id; } set { _leave.Id = value; } }

        [Required]
        [Display(Name = "Intern ID")]
        public int InternId { get { return _leave.InternId; } set { _leave.InternId = value; } }

        [Required]
        [Display(Name = "From Date")]
        public DateTime FromDate { get { return _leave.FromDate; } set { _leave.FromDate = value; } }

        [Required]
        [Display(Name = "To Date")]
        public DateTime ToDate { get { return _leave.ToDate; } set { _leave.ToDate = value; } }

        [Display(Name = "Reason")]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Reason { get { return _leave.Reason; } set { _leave.Reason = value; } }

        public string CreatedBy { get { return _leave.CreatedBy; } set { _leave.CreatedBy = value; } }

        public DateTime CreatedDate { get { return _leave.CreatedDate; } set { _leave.CreatedDate = value; } }

        public string ModifiedBy { get { return _leave.ModifiedBy; } set { _leave.ModifiedBy = value; } }

        public DateTime ModifiedDate { get { return _leave.ModifiedDate; } set { _leave.ModifiedDate = value; } }

        public bool IsDeleted { get { return _leave.IsDeleted; } set { _leave.IsDeleted = value; } }

        public Leave leave
        {
            get { return _leave; }
            set { _leave = value; }
        }

        public LeaveModel()
        {
            _leave = new Leave();
        }

        public LeaveModel(Leave leave)
        {
            _leave = leave;
        }
    }
}