using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CsharpConsoleChApp
{
    public class user
    {
        private int _userid;
        private string _name;
        private string _designation;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;
        public user()
        {
            _userid = 0;
            _name = string.Empty;
            _designation = string.Empty;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }
        public user(int Userid, string Name, string Designation, DateTime CreatedDate, DateTime ModifiedDate, string CreatedBy, string ModifiedBy, bool IsDeleted)
        {
            _userid = Userid;
            _name = Name;
            _designation = Designation;
            _createdBy = CreatedBy;
            _createdDate = CreatedDate;
            _modifiedBy = ModifiedBy;
            _modifiedDate = ModifiedDate;
            _isDeleted = IsDeleted;
        }
        public int UserId
        {
            get { return _userid; } 
            set { _userid = value; }
        }
        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        public string Designation
        { 
            get { return _designation; }
            set { _designation = value; }
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
        
    }
}
