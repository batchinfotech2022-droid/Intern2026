using SmartCMApp.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartCMApp.UI.Models
{
    public class AccountModel
    {
        private int _id;
        private string _firstName;
        private string _lastName;
        private string _address;
        private string _phone;
        private string _userName;
        private string _password;
        private bool _isSystemAdmin;
        private bool _isSystemUser;
        private bool _isSystemSupervisor;
        private bool _isActive;
        private bool _isLogged;
        private int _noOfAttempts;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;



        

        public int Id { get { return _id; } set { _id = value; } }
        public string FirstName { get { return _firstName; } set { _firstName = value; } }
        public string LastName { get { return _lastName; } set { _lastName = value; } }
        public string Address { get { return _address; } set { _address = value; } }
        public string Phone { get { return _phone; } set { _phone = value; } }
        public string UserName { get { return _userName; } set { _userName = value; } }
        public string Password { get { return _password; } set { _password = value; } }
        public bool IsSystemAdmin { get { return _isSystemAdmin; } set { _isSystemAdmin = value; } }
        public bool IsSystemUser { get { return _isSystemUser; } set { _isSystemUser = value; } }
        public bool IsSystemSupervisor { get { return _isSystemSupervisor; } set { _isSystemSupervisor = value; } }
        public bool IsActive { get { return _isActive; } set { _isActive = value; } }
        public bool IsLogged { get { return _isLogged; } set { _isLogged = value; } }
        public int NoOfAttempts { get { return _noOfAttempts; } set { _noOfAttempts = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }


        public AccountModel()
        {
            _id = 0;
            _firstName = "";
            _lastName = "";
            _address = "";
            _phone = "";
            _userName = "";
            _password = "";
            _isSystemAdmin = false;
            _isSystemUser = true;
            _isSystemSupervisor = false;
            _isActive = true;
            _isLogged = false;
            _noOfAttempts = 0;
            _createdBy = "";
            _createdDate = DateTime.Now;
            _modifiedBy = "";
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public AccountModel(int id,
                        string firstName,
                        string lastName,
                        string address,
                        string phone,
                        string userName,
                        string password,
                        bool isSystemAdmin,
                        bool isSystemUser,
                        bool isSystemSupervisor,
                        bool isActive,
                        bool isLogged,
                        int noOfAttempts,
                        string createdBy,
                        DateTime createdDate,
                        string modifiedBy,
                        DateTime modifiedDate,
                        bool isDeleted)
        {
            _id = id;
            _firstName = firstName;
            _lastName = lastName;
            _address = address;
            _phone = phone;
            _userName = userName;
            _password = password;
            _isSystemAdmin = isSystemAdmin;
            _isSystemUser = isSystemUser;
            _isSystemSupervisor = isSystemSupervisor;
            _isActive = isActive;
            _isLogged = isLogged;
            _noOfAttempts = noOfAttempts;
            _createdBy = createdBy;
            _createdDate = createdDate;
            _modifiedBy = modifiedBy;
            _modifiedDate = modifiedDate;
            _isDeleted = isDeleted;
        }

    }
}
