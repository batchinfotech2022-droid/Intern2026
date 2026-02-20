using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InternLAApp.DL;

namespace InternLAApp.BL
{
    public class Intern
    {
        #region Fields

        private int _id;
        private string _fullName;
        private string _userName;
        private string _password;
        private DateTime _dateOfJoining;
        private int _availableLeave;
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
        public string FullName { get { return _fullName; } set { _fullName = value; } }
        public string UserName { get { return _userName; } set { _userName = value; } }
        public string Password { get { return _password; } set { _password = value; } }
        public DateTime DateOfJoining { get { return _dateOfJoining; } set { _dateOfJoining = value; } }
        public int AvailableLeave { get { return _availableLeave; } set { _availableLeave = value; } }
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
            _fullName = "";
            _userName = "";
            _password = "";
            _dateOfJoining = DateTime.Now;
            _availableLeave = 0;
            _isActive = true;
            _isLocked = false;
            _noOfAttempts = 0;
            _createdBy = "";
            _createdDate = DateTime.Now;
            _modifiedBy = "";
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public Intern(int id, string fullName, string userName, string password,
                      DateTime dateOfJoining, int availableLeave,
                      bool isActive, bool isLocked, int noOfAttempts,
                      string createdBy, DateTime createdDate,
                      string modifiedBy, DateTime modifiedDate,
                      bool isDeleted)
        {
            _id = id;
            _fullName = fullName;
            _userName = userName;
            _password = password;
            _dateOfJoining = dateOfJoining;
            _availableLeave = availableLeave;
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

        public static int Create(string usrName, string fullName, string userName,
                                 string password, DateTime dateOfJoining)
        {
            string createdBy = usrName;
            DateTime createdDate = DateTime.Now;
            string modifiedBy = usrName;
            DateTime modifiedDate = DateTime.Now;
            bool isDeleted = false;

            try
            {
                int res = InternsData.Create(fullName, userName, password,
                                            dateOfJoining, createdBy,
                                            createdDate, modifiedBy,
                                            modifiedDate, isDeleted);

                Activity.Create(usrName, "Intern", "Create",
                                DateTime.Now, true,
                                "UserName:" + userName);

                return res;
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Intern", "Create",
                                DateTime.Now, false,
                                "UserName:" + userName);
                return -1;
            }
        }

        public static List<Intern> RetrieveAll(string usrName)
        {
            List<Intern> list = new List<Intern>();

            try
            {
                DataTable dt = InternsData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    list.Add(ConvertReaderToObject(r));

                r.Close();
                dt.Dispose();

                Activity.Create(usrName, "Intern", "RetrieveAll",
                                DateTime.Now, true, "All Records");
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Intern", "RetrieveAll",
                                DateTime.Now, false, "All Records");
            }

            return list;
        }

        public static Intern RetrieveById(string usrName, int id)
        {
            Intern result = null;

            try
            {
                DataTable dt = InternsData.RetrieveById(id);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = ConvertReaderToObject(r);

                r.Close();
                dt.Dispose();

                Activity.Create(usrName, "Intern", "RetrieveById",
                                DateTime.Now, true, id.ToString());
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Intern", "RetrieveById",
                                DateTime.Now, false, id.ToString());
            }

            return result;
        }

        public bool Update(string usrName)
        {
            try
            {
                bool returnVal = InternsData.Update(Id, FullName, UserName,
                                                   Password, DateOfJoining,
                                                   AvailableLeave, IsActive,
                                                   IsLocked, NoOfAttempts,
                                                   CreatedBy, CreatedDate,
                                                   ModifiedBy, ModifiedDate,
                                                   IsDeleted);

                Activity.Create(usrName, "Intern", "Update",
                                DateTime.Now, true,
                                "UserName:" + UserName);

                return returnVal;
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Intern", "Update",
                                DateTime.Now, false,
                                "UserName:" + UserName);
                return false;
            }
        }

        public static bool Delete(string usrName, int id)
        {
            try
            {
                bool returnVal = InternsData.Delete(id);

                Activity.Create(usrName, "Intern", "Delete",
                                DateTime.Now, true, id.ToString());

                return returnVal;
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Intern", "Delete",
                                DateTime.Now, false, id.ToString());
                return false;
            }
        }

        #endregion

        #region Convert Reader

        private static Intern ConvertReaderToObject(DataTableReader r)
        {
            return new Intern(
                r.ToInt("Id"),
                r.ToString("FullName"),
                r.ToString("UserName"),
                r.ToString("Password"),
                r.ToDateTime("DateOfJoining"),
                r.ToInt("AvailableLeave"),
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

        #endregion
    }
}