using System;
using System.ComponentModel.DataAnnotations;
using Internsapp.BL;

namespace Internsapp.UI.Models
{
    public class LeaveModel
    {
        private Leave _leave;

        public int Id
        {
            get { return _leave.Id; }
            set { _leave.Id = value; }
        }

        [Required]
        public int InternId
        {
            get { return _leave.InternId; }
            set { _leave.InternId = value; }
        }

        [StringLength(100)]
        public string InternName
        {
            get { return _leave.InternName; }
            set { _leave.InternName = value; }
        }

        [Required, DataType(DataType.Date)]
        public DateTime FromDate
        {
            get { return _leave.FromDate; }
            set { _leave.FromDate = value; }
        }

        [Required, DataType(DataType.Date)]
        public DateTime ToDate
        {
            get { return _leave.ToDate; }
            set { _leave.ToDate = value; }
        }

        [Required, StringLength(250)]
        public string Reason
        {
            get { return _leave.Reason; }
            set { _leave.Reason = value; }
        }
        public string Status { get; set; }

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