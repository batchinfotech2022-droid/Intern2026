using System;
using System.ComponentModel.DataAnnotations;
using Intern_MVC.Models;

namespace Intern_MVC.ViewModels
{
    public class LeaveViewModel
    {
        private int _id;
        private string _employeeName;
        private string _leaveType;
        private DateTime _fromDate;
        private DateTime _toDate;
        private string _reason;
        private bool _isApproved;

        [Required]
        public int Id { get { return _id; } set { _id = value; } }

        [Required]
        public string EmployeeName { get { return _employeeName; } set { _employeeName = value; } }

        [Required]
        public string LeaveType { get { return _leaveType; } set { _leaveType = value; } }

        [Required]
        public DateTime FromDate { get { return _fromDate; } set { _fromDate = value; } }

        [Required]
        public DateTime ToDate { get { return _toDate; } set { _toDate = value; } }

        [Required]
        public string Reason { get { return _reason; } set { _reason = value; } }

        public bool IsApproved { get { return _isApproved; } set { _isApproved = value; } }

        public LeaveViewModel()
        {
            _id = 0;
            _employeeName = "Undefined";
            _leaveType = "Casual";
            _fromDate = DateTime.Now;
            _toDate = DateTime.Now;
            _reason = "Reason";
            _isApproved = false;
        }

        public LeaveViewModel(int Id, string EmployeeName, string LeaveType,
                               DateTime FromDate, DateTime ToDate, string Reason, bool IsApproved)
        {
            _id = Id;
            _employeeName = EmployeeName;
            _leaveType = LeaveType;
            _fromDate = FromDate;
            _toDate = ToDate;
            _reason = Reason;
            _isApproved = IsApproved;
        }

        
        public LeaveViewModel(Leave leave)
        {
            _id = leave.Id;
            _employeeName = leave.EmployeeName;
            _leaveType = leave.LeaveType;
            _fromDate = leave.FromDate;
            _toDate = leave.ToDate;
            _reason = leave.Reason;
            _isApproved = leave.IsApproved;
        }
    }
}