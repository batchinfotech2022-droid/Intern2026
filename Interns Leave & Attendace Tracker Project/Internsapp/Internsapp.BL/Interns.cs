using Internsapp.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internsapp.BL
{
    public class Intern
    {
        #region Fields

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

        #endregion

        #region Properties

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

        #endregion

        #region Constructor

        public Intern()
        {
            _id = 0;
            _firstName = "";
            _lastName = "";
            _userName = "";
            _password = "";
            _dateOfJoining = DateTime.Now;
            _availableLeave = 0;
            _address = "";
            _phone = "";
            _isSystemAdmin = false;
            _isActive = true;
            _isLocked = false;
            _noOfAttempts = 0;
            _createdBy = "";
            _createdDate = DateTime.Now;
            _modifiedBy = "";
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public Intern(int id, string firstName, string lastName, string userName, string password,
                      DateTime dateOfJoining, int availableLeave, string address, string phone,
                      bool isSystemAdmin, bool isActive, bool isLocked, int noOfAttempts,
                      string createdBy, DateTime createdDate, string modifiedBy,
                      DateTime modifiedDate, bool isDeleted)
        {
            _id = id;
            _firstName = firstName;
            _lastName = lastName;
            _userName = userName;
            _password = password;
            _dateOfJoining = dateOfJoining;
            _availableLeave = availableLeave;
            _address = address;
            _phone = phone;
            _isSystemAdmin = isSystemAdmin;
            _isActive = isActive;
            _isLocked = isLocked;
            _noOfAttempts = noOfAttempts;
            _createdBy = createdBy;
            _createdDate = createdDate;
            _modifiedBy = modifiedBy;
            _modifiedDate = modifiedDate;
            _isDeleted = isDeleted;
        }

        #endregion

        #region CRUD

        public static int Create(Intern obj, string usrName)
        {
            return InternData.Create(
                obj.FirstName,
                obj.LastName,
                obj.UserName,
                obj.Password,
                obj.DateOfJoining,
                obj.AvailableLeave,
                obj.Address,
                obj.Phone,
                obj.IsSystemAdmin,
                obj.IsActive,
                obj.IsLocked,
                obj.NoOfAttempts,
                usrName,
                DateTime.Now,
                usrName,
                DateTime.Now,
                obj.IsDeleted
            );
        }

        public static List<Intern> RetrieveAll()
        {
            List<Intern> list = new List<Intern>();
            DataTable dt = InternData.RetrieveAll();

            foreach (DataRow r in dt.Rows)
            {
                list.Add(ConvertRowToObject(r));
            }

            return list;
        }

        public static Intern RetrieveByUserName(string userName)
        {
            DataTable dt = InternData.RetrieveByUserName(userName);

            if (dt.Rows.Count == 0)
                return null;

            return ConvertRowToObject(dt.Rows[0]);
        }

        public bool Update(string usrName)
        {
            return InternData.Update(
                Id,
                FirstName,
                LastName,
                UserName,
                Password,
                DateOfJoining,
                AvailableLeave,
                Address,
                Phone,
                IsSystemAdmin,
                IsActive,
                IsLocked,
                NoOfAttempts,
                usrName,
                DateTime.Now,
                IsDeleted
            );
        }

        #endregion

        #region Convert

        private static Intern ConvertRowToObject(DataRow r)
        {
            return new Intern(
                Convert.ToInt32(r["Id"]),
                r["FirstName"].ToString(),
                r["LastName"].ToString(),
                r["UserName"].ToString(),
                r["Password"].ToString(),
                Convert.ToDateTime(r["DateOfJoining"]),
                Convert.ToInt32(r["AvailableLeave"]),
                r["Address"].ToString(),
                r["Phone"].ToString(),
                Convert.ToBoolean(r["IsSystemAdmin"]),
                Convert.ToBoolean(r["IsActive"]),
                Convert.ToBoolean(r["IsLocked"]),
                Convert.ToInt32(r["NoOfAttempts"]),
                r["CreatedBy"].ToString(),
                Convert.ToDateTime(r["CreatedDate"]),
                r["ModifiedBy"].ToString(),
                Convert.ToDateTime(r["ModifiedDate"]),
                Convert.ToBoolean(r["IsDeleted"])
            );
        }

        #endregion
    }
}