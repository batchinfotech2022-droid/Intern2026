using SmartCMApp.DL;
using System;
using System.Collections.Generic;
using System.Data;

namespace SmartCMApp.BL
{
    public class Register
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



        #region Properties

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

        #endregion

        #region Constructors

        public Register()
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

        public Register(int id,
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

        #endregion


        #region CRUD

        public static int Create(Register obj, string usrName)
        {
            return RegisterData.Create(
               obj.FirstName,
                obj.LastName,
                obj.Address,
                obj.Phone,
                obj.UserName,
                obj.Password,
                obj.IsSystemAdmin,
                obj.IsSystemUser,
                obj.IsSystemSupervisor,
                obj.IsActive,
                obj.IsLogged,
                obj.NoOfAttempts,
                usrName,
                DateTime.Now,
                usrName,
                DateTime.Now,
                obj.IsDeleted
            );
        }


        public static List<Register> RetrieveAll()
        {
            List<Register> list = new List<Register>();
            DataTable dt = RegisterData.RetrieveAll();

            foreach (DataRow row in dt.Rows)
            {
                Register obj = new Register
                {
                    Id = Convert.ToInt32(row["Id"]),
                    FirstName = row["FirstName"].ToString(),
                    LastName = row["LastName"].ToString(),
                    UserName = row["UserName"].ToString(),
                    IsActive = Convert.ToBoolean(row["IsActive"])
                };

                list.Add(obj);
            }

            return list;
        }


        public static Register Login(string userName, string password)
        {
            DataTable dt = RegisterData.Login(userName, password);

            if (dt.Rows.Count == 0)
                return null;

            DataRow row = dt.Rows[0];

            return new Register
            {
                Id = Convert.ToInt32(row["Id"]),
                FirstName = row["FirstName"].ToString(),
                LastName = row["LastName"].ToString(),
                Address = row["Address"].ToString(),
                Phone = row["Phone"].ToString(),
                UserName = row["UserName"].ToString(),
                Password = row["Password"].ToString(),
                IsActive = Convert.ToBoolean(row["IsActive"]),
                IsLogged = Convert.ToBoolean(row["IsLogged"]),
                NoOfAttempts = Convert.ToInt32(row["NoOfAttempts"]),
                IsDeleted = Convert.ToBoolean(row["IsDeleted"])
            };
        }


        public static Register RetrieveByUserName(string userName)
        {
            DataTable dt = RegisterData.RetrieveByUserName(userName);

            if (dt.Rows.Count == 0)
                return null;

            DataRow row = dt.Rows[0];

            return new Register
            {
                Id = Convert.ToInt32(row["Id"]),
                UserName = row["UserName"].ToString(),
                Password = row["Password"].ToString(),
                IsActive = Convert.ToBoolean(row["IsActive"]),
                IsLogged = Convert.ToBoolean(row["IsLogged"]),
                NoOfAttempts = Convert.ToInt32(row["NoOfAttempts"]),
                IsDeleted = Convert.ToBoolean(row["IsDeleted"])
            };
        }


        public bool Update(string userName)
        {
            return RegisterData.Update(
                Id,
                FirstName,
        LastName,
        Address,
        Phone,
        UserName,
        Password,
        IsSystemUser,
        IsSystemAdmin,
        IsSystemSupervisor,
        IsActive,
        IsLogged,
        NoOfAttempts,
        userName,
        DateTime.Now
            );
        }

        public static Boolean Authenticate(string UserName, string PassWord)
        {
            if (PassWord.Trim() == "")
            {
                return false;
            }
            bool bVal = false;
            try
            {

                Register user = Register.RetrieveByUserName(UserName);
                if (user != null )
                {
                    if (PasswordHash.VerifyPassword(PassWord, user.Password))
                    {
                        bVal = true;
                    }
                    else
                    {
                        if (PasswordHash.isHashedPassword(PassWord))
                        {
                            bVal = false;
                        }
                        else if (PassWord == user.Password)
                        {
                            bVal = true;
                            user.Password = PasswordHash.GenerateHash(PassWord);
                            user.Update(user.UserName);
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                throw;
            }

            return bVal;
        }

        #endregion
    }
}
