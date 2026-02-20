using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;

namespace ConsoleApp1
{
    public class LeaveRecord
    {

        private int _id;
        private string _leaveType;
        private DateTime _fromDate;
        private DateTime _toDate;
        private decimal _totalDays;
        private string _reason;
        private string _status;
        private DateTime _appliedOn;
        private string _createdBy;
        private DateTime _createdDate;
        private DateTime _modifiedDate;
        private string _modifiedBy;
        private bool _isDeleted;

        public LeaveRecord()

        {
            _id = 0;
            _leaveType = string.Empty;
            _fromDate = DateTime.MinValue;
            _toDate = DateTime.MaxValue;
            _totalDays = 0;
            _reason = string.Empty;
            _status = string.Empty;
            _appliedOn = DateTime.Now;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _isDeleted = false;
        }
        public int id

        {
            get { return _id; }
            set { _id = value; }
        }
        
        public string leavetype
        { get { return _leaveType; } set { _leaveType = value; } }

        public DateTime fromdate
        { get { return _fromDate; } set { _fromDate = value; } }
        public DateTime todate
        { get { return _toDate; } set { _toDate = value; } }
        public decimal totaldays
        { get { return _totalDays; } set { _totalDays = value; } }

        public string reason
        { get { return _reason; } set { _reason = value; } }
        public string status
        { get { return _status; } set { _status = value; } }
        public string createdBy
        {
            get { return _createdBy; }
            set { _createdBy = value; }
        }
        public DateTime createdDate
        { get { return _createdDate; } set { _createdDate = value; } }
        public DateTime modifiedDate
        { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public string modifiedBy
        { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime appliedOn
        { get { return _appliedOn; } set { _appliedOn = value; } }
        public bool isDeleted
        { get { return _isDeleted; } set { _isDeleted = value; } }

        public LeaveRecord(int id, string name, string leavetype, DateTime fromdate, DateTime todate, decimal totaldays, string reason, string status, DateTime createdDate, string createdBy, DateTime modifiedDate, string modifiedBy, bool isDeleted)
        {
            _id = id;
            _leaveType = leavetype;
            _fromDate = fromdate;
            _toDate = todate;
            _totalDays = totaldays;
            _reason = reason;
            _status = status;
            _createdDate = createdDate;
            _createdBy = createdBy;
            _modifiedDate = modifiedDate;
            _modifiedBy = modifiedBy;
            _isDeleted = isDeleted;
        }

    }
}
