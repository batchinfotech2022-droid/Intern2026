using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;

namespace CsharpConsoleChApp
{
    public class task
    {
        private int _taskid;
        private int _assignedBy;
        private int _assignedTo;
        private string _title;
        private string _description;
        private DateTime? _deadline;
        private string _status;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        public task()
        {
            _taskid = 0;
            _assignedBy = 0;
            _assignedTo = 0;
            _title = string.Empty;
            _description = string.Empty;
            _deadline = DateTime.Now;
            _status = string.Empty;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public int Taskid
        {
            get { return _taskid; }
            set { _taskid = value; }    
        }
        public int AssignedBy
        {
            get { return _assignedBy; }
            set { _assignedBy = value; }
        }
        public int AssignedTo
        {
            get { return _assignedTo; }
            set { _assignedTo = value; }
        }
        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }
        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }
        public DateTime? Deadline
        {
            get { return _deadline; }
            set { _deadline = value; }
        }
        public string Status
        {
            get { return _status; }
            set { _status = value; }
        }
        public string CreatedBy
        {
            get { return _createdBy; }
            set { _createdBy = value; }
        }
        public DateTime CreatedDate
        {
            get { return _createdDate; }
            set { _createdDate = value; }
        }
        public string ModifiedBy
        {
            get { return _modifiedBy; }
            set { _modifiedBy = value; }
        }
        public DateTime ModifiedDate
        {
            get { return _modifiedDate; }
            set { _modifiedDate = value; }
        }
        public bool IsDeleted
        {
            get { return _isDeleted; }
            set { _isDeleted = value; }
        }
        public task(int Taskid, int AssignedBy,int AssignedTo, string Status,string Title, string Description,DateTime Deadline, DateTime CreatedDate, DateTime ModifiedDate ,string CreatedBy, string ModifiedBy, bool IsDeleted)
        {
            _taskid=Taskid;
            _assignedBy=AssignedBy;
            _assignedTo=AssignedTo;
            _title=Title;
            _description=Description;
            _createdBy=CreatedBy;
            _createdDate=CreatedDate;
            _modifiedBy=ModifiedBy;
            _modifiedDate=ModifiedDate;
            _status=Status;
            _deadline=Deadline;
            _isDeleted=IsDeleted;
        }
    }
    } 

