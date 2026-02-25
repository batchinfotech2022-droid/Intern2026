using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using UserTaskApp.BL;
using UserTaskApp.DL;
namespace UserTaskApp.BL
{
    public class AppUser
    {
        private int _id;
        private string _userName;
        private string _firstName;
        private string _lastName;
        private string _password;
        private string _phone;
        private string _address;
        private string _role; 
        private bool _isActive;
        private bool _isLogged;
        private int _noAttempts;
        private bool _isLocked;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;
 
        public int Id { get { return _id; } set { _id = value; } }
        public string UserName { get { return _userName; } set { _userName = value; } }
        public string FirstName { get { return _firstName; } set { _firstName = value; } }
        public string LastName { get { return _lastName; } set { _lastName = value; } }
        public string Password { get { return _password; } set { _password = value; } }
        public string Phone { get { return _phone; } set { _phone = value; } }
        public string Address { get { return _address; } set { _address = value; } }
        public string Role { get { return _role; } set { _role = value; } }
        public bool IsActive { get { return _isActive; } set { _isActive = value; } }
        public bool IsLogged { get { return _isLogged; } set { _isLogged = value; } }
        public int NoAttempts { get { return _noAttempts; } set { _noAttempts = value; } }
        public bool IsLocked { get { return _isLocked; } set { _isLocked = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }
        public AppUser()
        {
            _id = 0;
            _userName = string.Empty;
            _firstName = string.Empty;
            _lastName = string.Empty;
            _password = string.Empty;
            _phone = string.Empty;
            _address = string.Empty;
            _role= string.Empty;
            _isActive = true;
            _isLogged= false;
            _noAttempts = 0;
            _isLocked = false;
            _role = string.Empty; 
            _createdBy = string.Empty; 
            _createdDate = DateTime.Now; 
            _modifiedBy = string.Empty; 
            _modifiedDate = DateTime.Now; 
            _isDeleted = false; 
        }
        public AppUser(int Id, string UserName, string FirstName, string LastName, string Password, string Phone, string Address, string Role, bool IsActive, bool IsLogged,int NoAttempts, bool IsLocked,string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted) 
        {
            _id = Id;
            _userName = UserName;
            _firstName = FirstName;
            _lastName = LastName;
            _password = Password;
            _phone = Phone;
            _address = Address;
            _role = Role; 
            _isActive = IsActive;
            _isLogged = IsLogged;
            _noAttempts = NoAttempts;
            _isLocked = IsLocked;
            _createdBy = CreatedBy;         
            _createdDate = CreatedDate;      
            _modifiedBy = ModifiedBy;       
            _modifiedDate = ModifiedDate;    
            _isDeleted = IsDeleted;          
        }
        public static int Create(string usrName, string UserName, string FirstName, string LastName, string Password, string Phone, string Address,string Role,
            bool IsActive, bool IsLogged, int NoAttempts, bool IsLocked)
        {
            string CreatedBy = usrName;
            DateTime CreatedDate = DateTime.Now;
            string ModifiedBy = usrName;
            DateTime ModifiedDate = DateTime.Now;
            bool IsDeleted = false;

            try
            {
                int res = UserData.Create(UserName, FirstName, LastName, Password, Phone, Address,Role,
                    IsActive, IsLogged, NoAttempts, IsLocked,
                    CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);

                Activity.Create(usrName, "User", "Create", DateTime.Now, true, UserName);
                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "User", "Create", DateTime.Now, false, UserName);
                throw new Exception("Insert failed", ex);
            }
        }

        public static List<AppUser> RetrieveAll(string usrName)
        {
            List<AppUser> res = new List<AppUser>();

            try
            {
                DataTable dt = UserData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    res.Add(convertReaderToObject(r));

                r.Close(); dt.Dispose();
            }
            catch (Exception)
            {
                Activity.Create(usrName, "User", "RetrieveAll", DateTime.Now, false, "All");
                throw;
            }

            Activity.Create(usrName, "User", "RetrieveAll", DateTime.Now, true, "All");
            return res;
        }

        public static AppUser RetrieveById(string usrName, int Id)
        {
            AppUser result = null;

            try
            {
                DataTable dt = UserData.RetrieveById(Id);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = convertReaderToObject(r);

                r.Close(); dt.Dispose();
                Activity.Create(usrName, "User", "RetrieveById", DateTime.Now, true, Id.ToString());
                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "User", "RetrieveById", DateTime.Now, false, Id.ToString());
                throw new Exception("RetrieveById failed", ex);
            }
        }

        public bool Update(string usrName)
        {
            try
            {
                bool returnVal = UserData.Update(Id, UserName, FirstName, LastName, Password, Phone, Address, Role,
                    IsActive, IsLogged, NoAttempts, IsLocked,CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);
                

                Activity.Create(usrName, "User", "Update", DateTime.Now, true, UserName);
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "User", "Update", DateTime.Now, false, UserName);
                throw new Exception("Update failed", ex);
            }
        }

        public static bool Delete(string usrName, int idValue)
        {
            try
            {
                bool returnVal = UserData.Delete(usrName,idValue);
                Activity.Create(usrName, "User", "Delete", DateTime.Now, true, idValue.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "User", "Delete", DateTime.Now, false, idValue.ToString());
                throw new Exception("Delete failed", ex);
            }
        }
        private static AppUser convertReaderToObject(DataTableReader r)
        {
            return new AppUser(r.ToInt("Id"),
            r.ToString("UserName"),
             r.ToString("FirstName"),
             r.ToString("LastName"),
             r.ToString("Password"),
             r.ToString("Phone"),
             r.ToString("Address"),
             r.ToString("Role"),
            r.ToBool("IsActive"),
            r.ToBool("IsLogged"),
             r.ToInt("NoAttempts"),
             r.ToBool("IsLocked"),
            r.ToString("CreatedBy"),
            r.ToDateTime("CreatedDate"),
            r.ToString("ModifiedBy"),
            r.ToDateTime("ModifiedDate"),
            r.ToBool("IsDeleted"));
        }
        public static AppUser RetrieveByUserName(string UserName)
        {
            DataTable dt = UserData.RetrieveByUserName(UserName);

            DataTableReader r = dt.CreateDataReader();

            if (r.Read())
            {
                AppUser result = convertReaderToObject(r);
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

                AppUser user = AppUser.RetrieveByUserName(UserName);
                if (user != null)
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








 