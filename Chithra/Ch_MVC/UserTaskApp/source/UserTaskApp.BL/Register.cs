using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using UserTaskApp.DL;

namespace UserTaskApp.BL
{
    public class Register
    {
        private int _id;
        private string _userName;
        private string _firstName;
        private string _lastName;
        private string _password;
        private string _phone;
        private string _address;
        private bool _isSystemAdmin;
        private bool _isSystemUser;
        private bool _isSystemSupervisor;
        private bool _isActive;
        private bool _isLocked;
        private int _noAttempts;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;
        private bool _isLogged;
        public int Id { get { return _id; } set { _id = value; } }
        public string UserName { get { return _userName; } set { _userName = value; } }
        public string FirstName { get { return _firstName; } set { _firstName = value; } }
        public string LastName { get { return _lastName; } set { _lastName = value; } }
        public string Password { get { return _password; } set { _password = value; } }
        public string Phone { get { return _phone; } set { _phone = value; } }
        public string Address { get { return _address; } set { _address = value; } }
        public bool IsSystemAdmin { get { return _isSystemAdmin; } set { _isSystemAdmin = value; } }
        public bool IsSystemUser { get { return _isSystemUser; } set { _isSystemUser = value; } }
        public bool IsSystemSupervisor { get { return _isSystemSupervisor; } set { _isSystemSupervisor = value; } }
        public bool IsActive { get { return _isActive; } set { _isActive = value; } }
        public bool IsLocked { get { return _isLocked; } set { _isLocked = value; } }
        public int NoAttempts { get { return _noAttempts; } set { _noAttempts = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }
        public bool IsLogged { get { return _isLogged; } set { _isLogged = value; } }

        public Register()
        {
            _id = 0;
            _userName = string.Empty;
            _firstName = string.Empty;
            _lastName = string.Empty;
            _password = string.Empty;
            _phone = string.Empty;
            _address = string.Empty;
            _isSystemAdmin = true;
            _isSystemUser = false;
            _isSystemSupervisor = false;
            _isActive = true;
            _isLocked = false;
            _noAttempts = 0;
            _createdBy = string.Empty;
            _createdDate = DateTime.MinValue;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.MinValue;
            _isDeleted = false;
            _isLogged = false;

        }
        public Register(int Id, string UserName, string FirstName, string LastName, string Password, string Phone, string Address, bool IsSystemAdmin, bool IsSystemUser, bool IsSystemSupervisor, bool IsActive, bool IsLocked, int NoAttempts, string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted,bool IsLogged)
        {
            _id = Id;
            _userName = UserName;
            _firstName = FirstName;
            _lastName = LastName;
            _password = Password;
            _phone = Phone;
            _address = Address;
            _isSystemAdmin = IsSystemAdmin;
            _isSystemUser = IsSystemUser;
            _isSystemSupervisor = IsSystemSupervisor;
            _isActive = IsActive;
            _isLocked = IsLocked;
            _noAttempts = NoAttempts;
            _createdBy = CreatedBy;
            _createdDate = CreatedDate;
            _modifiedBy = ModifiedBy;
            _modifiedDate = ModifiedDate;
            _isDeleted = IsDeleted;
            _isLogged = IsLogged;
        }
        public static int Create(string UserName, string FirstName, string LastName, string Password, string Phone, string Address,
            bool IsSystemAdmin, bool IsSystemUser, bool IsSystemSupervisor, bool IsActive, bool IsLocked, int NoAttempts,bool IsLogged)
        {
            string CreatedBy = UserName;
            DateTime CreatedDate = DateTime.Now;
            string ModifiedBy = UserName;
            DateTime ModifiedDate = DateTime.Now;
            bool IsDeleted = false;

            try
            {
                int res = RegisterData.Create(UserName, FirstName, LastName, Password, Phone, Address,
                    IsSystemAdmin, IsSystemUser, IsSystemSupervisor, IsActive, IsLocked, NoAttempts,
                    CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted, IsLogged);

                Activity.Create(UserName, "Register", "Create", DateTime.Now, true, "All Fields");
                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(UserName, "Register", "Create", DateTime.Now, false, "All Fields");
                throw new Exception("Insert failed", ex);
            }
        }

        public static List<Register> RetrieveAll(string UserName)
        {
            List<Register> res = new List<Register>();

            try
            {
                DataTable dt = RegisterData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    res.Add(convertReaderToObject(r));

                r.Close(); dt.Dispose();
            }
            catch (Exception ex)
            {
                Activity.Create(UserName, "Register", "RetrieveAll", DateTime.Now, false, "All");
                throw new Exception("RetrieveAll failed", ex);
            }

            Activity.Create(UserName, "Register", "RetrieveAll", DateTime.Now, true, "All");
            return res;
        }

        public static Register RetrieveById(string usrName, int id)
        {
            Register result = null;

            try
            {
                DataTable dt = RegisterData.RetrieveById(id);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = convertReaderToObject(r);

                r.Close(); dt.Dispose();
                Activity.Create(usrName, "Register", "RetrieveById", DateTime.Now, true, id.ToString());
                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Register", "RetrieveById", DateTime.Now, false, id.ToString());
                throw new Exception("RetrieveById failed", ex);
            }
        }

        public bool Update(string UserName)
        {
            try
            {
                bool returnVal = RegisterData.Update(Id, UserName, FirstName, LastName, Password, Phone, Address,
                    IsSystemAdmin, IsSystemUser, IsSystemSupervisor, IsActive, IsLocked, NoAttempts,
                    CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted, IsLogged);

                Activity.Create(UserName, "Register", "Update", DateTime.Now, true, UserName);
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(UserName, "Register", "Update", DateTime.Now, false, UserName);
                throw new Exception("Update failed", ex);
            }
        }

        public static bool Delete(string UserName, int idValue)
        {
            try
            {
                bool returnVal = RegisterData.Delete(idValue);
                Activity.Create(UserName, "Register", "Delete", DateTime.Now, true, idValue.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(UserName, "Register", "Delete", DateTime.Now, false, idValue.ToString());
                throw new Exception("Delete failed", ex);
            }
        }
            private static Register convertReaderToObject(DataTableReader r)
        {
            return new Register(r.ToInt("Id"),
            r.ToString("UserName"),
             r.ToString("FirstName"),
             r.ToString("LastName"),
             r.ToString("Password"),
             r.ToString("Phone"),
             r.ToString("Address"),
            r.ToBool("IsSystemAdmin"),
             r.ToBool("IsSystemUser"),
             r.ToBool("IsSystemSupervisor"),
            r.ToBool("IsActive"),
             r.ToBool("IsLocked"),
           r.ToInt("NoAttempts"),
            r.ToString("CreatedBy"),
            r.ToDateTime("CreatedDate"),
            r.ToString("Modifiedby"),
            r.ToDateTime("ModifiedDate"),
            r.ToBool("IsDeleted"),
            r.ToBool("IsLogged"));    
    }
        public static Register RetrieveByUserName(string UserName)
        {
            DataTable dt = RegisterData.RetrieveByUserName(UserName);

            DataTableReader r = dt.CreateDataReader();

            if (r.Read())
            {
                Register result = convertReaderToObject(r);
                r.Close();
                dt.Dispose();
                return result;
            }

            r.Close();
            dt.Dispose();
            return null;
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
                if (user != null && user.IsSystemUser)
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

                throw new Exception("Authenticate failed", ex);
            }

            return bVal;
        }
    }
}







