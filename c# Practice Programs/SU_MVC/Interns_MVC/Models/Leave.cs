using Intern_MVC.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Intern_MVC.Models
{
    public class Leave
    {
        private int _id;
        private string _employeeName;
        private string _leaveType;
        private DateTime _fromDate;
        private DateTime _toDate;
        private string _reason;
        private bool _isApproved;

        public int Id { get { return _id; } set { _id = value; } }
        public string EmployeeName { get { return _employeeName; } set { _employeeName = value; } }
        public string LeaveType { get { return _leaveType; } set { _leaveType = value; } }
        public DateTime FromDate { get { return _fromDate; } set { _fromDate = value; } }
        public DateTime ToDate { get { return _toDate; } set { _toDate = value; } }
        public string Reason { get { return _reason; } set { _reason = value; } }
        public bool IsApproved { get { return _isApproved; } set { _isApproved = value; } }

        public Leave()
        {
            _id = 0;
            _employeeName = "Undefined";
            _leaveType = "Undefined";
            _fromDate = DateTime.Now;
            _toDate = DateTime.Now;
            _reason = "Undefined";
            _isApproved = false;
        }

        public Leave(int Id, string EmployeeName, string LeaveType,
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

        public Leave(LeaveViewModel model)
        {
            _id = model.Id;
            _employeeName = model.EmployeeName;
            _leaveType = model.LeaveType;
            _fromDate = model.FromDate;
            _toDate = model.ToDate;
            _reason = model.Reason;
            _isApproved = model.IsApproved;
        }

        // Dummy In-Memory Data
        public static List<Leave> DummyLeaves = new List<Leave>()
        {
            new Leave(1,"Rahul","Sick",DateTime.Now.AddDays(-2),DateTime.Now.AddDays(-1),"Fever",false),
            new Leave(2,"Pooja","Casual",DateTime.Now,DateTime.Now.AddDays(1),"Personal",true),
            new Leave(3,"Amit","Earned",DateTime.Now,DateTime.Now.AddDays(2),"Family",false)
        };

        public static List<Leave> GetAllLeaves()
        {
            return DummyLeaves;
        }

        public static Leave GetLeaveById(int id)
        {
            return DummyLeaves.FirstOrDefault(l => l.Id == id);
        }

        public static void AddOrUpdateLeave(Leave leave)
        {
            var existing = DummyLeaves.FirstOrDefault(l => l.Id == leave.Id);

            if (existing == null)
            {
                leave.Id = DummyLeaves.Count > 0
                            ? DummyLeaves.Max(l => l.Id) + 1
                            : 1;

                DummyLeaves.Add(leave);
            }
            else
            {
                existing.EmployeeName = leave.EmployeeName;
                existing.LeaveType = leave.LeaveType;
                existing.FromDate = leave.FromDate;
                existing.ToDate = leave.ToDate;
                existing.Reason = leave.Reason;
                existing.IsApproved = leave.IsApproved;
            }
        }

                public static void DeleteLeave(int id)
        {
            var leave = DummyLeaves.FirstOrDefault(l => l.Id == id);
            if (leave != null)
            {
                DummyLeaves.Remove(leave);
            }
        }
    }
}