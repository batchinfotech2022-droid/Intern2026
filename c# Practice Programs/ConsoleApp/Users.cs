using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace ConsoleApp1
{
    public class Users
    {

        private int _id;
        private string _internCode;
        private string _fullName;
        private DateTime _dateOfJoining;
        private bool _isActive;
        private string _createdBy;
        private DateTime _createdDate;
        private DateTime _modifiedDate;
        private string _modifiedBy;
        private bool _isDeleted;

        public Users()

        {
            _id = 0;
            _internCode = string.Empty;
            _fullName = string.Empty;
            _dateOfJoining = DateTime.Now;
            _isActive = true;
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
        public string interncode

        {
            get { return _internCode; }
            set { _internCode = value; }
        }
        public string fullname
        { get { return _fullName; } set { _fullName = value; } }
     

        public DateTime dateOfJoining
        { get { return _dateOfJoining; } set { _dateOfJoining = value; } }

        public bool isActive
        { get { return _isActive; } set { _isActive = value; } }
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
               public bool isDeleted
        { get { return _isDeleted; } set { _isDeleted = value; } }

        public Users(int id,string interncode, string fullname,  DateTime dateOfjoining, bool isActive, DateTime createdDate, string createdBy, DateTime modifiedDate, string modifiedBy, bool isDeleted)
        {
            _id = id;
            _internCode = interncode;
            _fullName = fullname;
            _dateOfJoining = dateOfjoining;
            _isActive = isActive;
            _createdDate = createdDate;
            _createdBy = createdBy;
            _modifiedDate = modifiedDate;
            _modifiedBy = modifiedBy;
            _isDeleted = isDeleted;
        }
    }
}
