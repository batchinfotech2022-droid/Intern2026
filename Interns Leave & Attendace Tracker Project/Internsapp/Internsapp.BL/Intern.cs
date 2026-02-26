using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Internsapp.DL;

namespace Internsapp.BL
{
    public class Intern
    {
        private int _id;
        private string _firstName;
        private string _lastName;
        private string _userName;
        private string _password;
        private DateTime _dateOfJoining;
        private int _availableLeave;
        private string _address;
        private string _phone;
        private bool _isSystemAdmin;
        private bool _isActive;
        private bool _isLocked;
        private int _noOfAttempts;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        public int Id { get { return _id; } set { _id = value; } }
        public string FirstName { get { return _firstName; } set { _firstName = value; } }
        public string LastName { get { return _lastName; } set { _lastName = value; } }
        public string UserName { get { return _userName; } set { _userName = value; } }
        public string Password { get { return _password; } set { _password = value; } }
        public DateTime DateOfJoining { get { return _dateOfJoining; } set { _dateOfJoining = value; } }
        public int AvailableLeave { get { return _availableLeave; } set { _availableLeave = value; } }
        public string Address { get { return _address; } set { _address = value; } }
        public string Phone { get { return _phone; } set { _phone = value; } }
        public bool IsSystemAdmin { get { return _isSystemAdmin; } set { _isSystemAdmin = value; } }
        public bool IsActive { get { return _isActive; } set { _isActive = value; } }
        public bool IsLocked { get { return _isLocked; } set { _isLocked = value; } }
        public int NoOfAttempts { get { return _noOfAttempts; } set { _noOfAttempts = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }

        public Intern()
        {
            _id = 0;
            _firstName = string.Empty;
            _lastName = string.Empty;
            _userName = string.Empty;
            _password = string.Empty;
            _dateOfJoining = DateTime.Now;
            _availableLeave = 0;
            _address = string.Empty;
            _phone = string.Empty;
            _isSystemAdmin = false;
            _isActive = true;
            _isLocked = false;
            _noOfAttempts = 0;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public Intern(int Id, string FirstName, string LastName, string UserName, string Password,
            DateTime DateOfJoining, int AvailableLeave, string Address, string Phone,
            bool IsSystemAdmin, bool IsActive, bool IsLocked, int NoOfAttempts,
            string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            _id = Id;
            _firstName = FirstName;
            _lastName = LastName;
            _userName = UserName;
            _password = Password;
            _dateOfJoining = DateOfJoining;
            _availableLeave = AvailableLeave;
            _address = Address;
            _phone = Phone;
            _isSystemAdmin = IsSystemAdmin;
            _isActive = IsActive;
            _isLocked = IsLocked;
            _noOfAttempts = NoOfAttempts;
            _createdBy = CreatedBy;
            _createdDate = CreatedDate;
            _modifiedBy = ModifiedBy;
            _modifiedDate = ModifiedDate;
            _isDeleted = IsDeleted;
        }

        public static int Create(string usrName, string FirstName, string LastName, string UserName, string Password,
            DateTime DateOfJoining, int AvailableLeave, string Address, string Phone,
            bool IsSystemAdmin, bool IsActive, bool IsLocked, int NoOfAttempts)
        {
            string CreatedBy = usrName;
            DateTime CreatedDate = DateTime.Now;
            string ModifiedBy = usrName;
            DateTime ModifiedDate = DateTime.Now;
            bool IsDeleted = false;

            try
            {
                int res = InternData.Create(FirstName, LastName, UserName, Password,
                    DateOfJoining, AvailableLeave, Address, Phone,
                    IsSystemAdmin, IsActive, IsLocked, NoOfAttempts,
                    CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);

                Activity.Create(usrName, "Intern", "Create", DateTime.Now, true, UserName);
                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Intern", "Create", DateTime.Now, false, UserName);
                throw new Exception("Insert failed", ex);
            }
        }

        public static List<Intern> RetrieveAll(string usrName)
        {
            List<Intern> res = new List<Intern>();

            try
            {
                DataTable dt = InternData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    res.Add(convertReaderToObject(r));

                r.Close();
                dt.Dispose();
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Intern", "RetrieveAll", DateTime.Now, false, "All");
                throw;
            }

            Activity.Create(usrName, "Intern", "RetrieveAll", DateTime.Now, true, "All");
            return res;
        }

        public static Intern RetrieveById(string usrName, int Id)
        {
            Intern result = null;

            try
            {
                DataTable dt = InternData.RetrieveById(Id);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = convertReaderToObject(r);

                r.Close();
                dt.Dispose();

                Activity.Create(usrName, "Intern", "RetrieveById", DateTime.Now, true, Id.ToString());
                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Intern", "RetrieveById", DateTime.Now, false, Id.ToString());
                throw new Exception("RetrieveById failed", ex);
            }
        }

        public static Intern RetrieveByUserName(string UserName)
        {
            DataTable dt = InternData.RetrieveByUserName(UserName);
            DataTableReader r = dt.CreateDataReader();

            if (r.Read())
            {
                Intern result = convertReaderToObject(r);
                r.Close();
                dt.Dispose();
                return result;
            }

            r.Close();
            dt.Dispose();
            return null;
        }

        public bool Update(string usrName)
        {
            try
            {
                bool returnVal = InternData.Update(Id, FirstName, LastName, UserName, Password,
                    DateOfJoining, AvailableLeave, Address, Phone,
                    IsSystemAdmin, IsActive, IsLocked, NoOfAttempts,
                    usrName, DateTime.Now, IsDeleted);

                Activity.Create(usrName, "Intern", "Update", DateTime.Now, true, UserName);
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Intern", "Update", DateTime.Now, false, UserName);
                throw new Exception("Update failed", ex);
            }
        }

        public static bool Delete(string usrName, int idValue)
        {
            try
            {
                bool returnVal = InternData.Delete(usrName, idValue);
                Activity.Create(usrName, "Intern", "Delete", DateTime.Now, true, idValue.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Intern", "Delete", DateTime.Now, false, idValue.ToString());
                throw new Exception("Delete failed", ex);
            }
        }

        private static Intern convertReaderToObject(DataTableReader r)
        {
            return new Intern(
                r.ToInt("Id"),
                r.ToString("FirstName"),
                r.ToString("LastName"),
                r.ToString("UserName"),
                r.ToString("Password"),
                r.ToDateTime("DateOfJoining"),
                r.ToInt("AvailableLeave"),
                r.ToString("Address"),
                r.ToString("Phone"),
                r.ToBool("IsSystemAdmin"),
                r.ToBool("IsActive"),
                r.ToBool("IsLocked"),
                r.ToInt("NoOfAttempts"),
                r.ToString("CreatedBy"),
                r.ToDateTime("CreatedDate"),
                r.ToString("ModifiedBy"),
                r.ToDateTime("ModifiedDate"),
                r.ToBool("IsDeleted")
            );
        }
        public static Boolean Authenticate(string UserName, string PassWord)
        {
            if (PassWord.Trim() == "")
                return false;

            bool bVal = false;

            try
            {
                Intern user = Intern.RetrieveByUserName(UserName);

                if (user != null)
                {
                    if (user.Password == PassWord)
                        bVal = true;
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Authenticate failed", ex);
            }

            return bVal;
        }

        public static Boolean Login(string UserName, string Password)
        {
            return Authenticate(UserName, Password);
        }

        public static int Register(string usrName, string FirstName, string LastName, string UserName, string Password,
            DateTime DateOfJoining, int AvailableLeave, string Address, string Phone)
        {
            return Create(usrName, FirstName, LastName, UserName, Password,
                DateOfJoining, AvailableLeave, Address, Phone,
                false, true, false, 0);
        }
    }
}