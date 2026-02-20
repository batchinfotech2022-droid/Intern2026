using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InternLAApp.DL;

namespace InternLAApp.BL
{
    public class Interns
    {

        #region Fields

        private int _id;
        private string _fullName;
        private DateTime _dateOfJoining;
        private int _availableLeave;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        #endregion //Fields

        #region Props

        public int Id { get { return _id; } set { _id = value; } }
        public string FullName { get { return _fullName; } set { _fullName = value; } }
        public DateTime DateOfJoining { get { return _dateOfJoining; } set { _dateOfJoining = value; } }
        public int AvailableLeave { get { return _availableLeave; } set { _availableLeave = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }

        #endregion //Props

        #region CTOR

        public Interns()
        {
            _id = 0;
            _fullName = string.Empty;
            _dateOfJoining = DateTime.Now;
            _availableLeave = 0;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public Interns(int id, string fullName, DateTime dateOfJoining, int availableLeave,
                       string createdBy, DateTime createdDate, string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            _id = id;
            _fullName = fullName;
            _dateOfJoining = dateOfJoining;
            _availableLeave = availableLeave;
            _createdBy = createdBy;
            _createdDate = createdDate;
            _modifiedBy = modifiedBy;
            _modifiedDate = modifiedDate;
            _isDeleted = isDeleted;
        }

        #endregion //CTOR

        #region CRUD

        public static int Create(string usrName, string fullName, DateTime dateOfJoining, int availableLeave)
        {
            string createdBy = usrName;
            DateTime createdDate = DateTime.Now;
            string modifiedBy = usrName;
            DateTime modifiedDate = DateTime.Now;
            bool isDeleted = false;

            try
            {
                int newId = InternsData.Create(fullName, dateOfJoining, availableLeave, createdBy, createdDate, modifiedBy, modifiedDate, isDeleted);
                return newId;
            }
            catch (Exception ex)
            {
                throw new Exception("Error creating intern", ex);
            }
        }
        public static List<Interns> RetrieveAll()
        {
            List<Interns> list = new List<Interns>();
            DataTable dt = InternsData.RetrieveAll();
            foreach (DataRow row in dt.Rows)
            {
                list.Add(ConvertRowToIntern(row));
            }
            return list;
        }

        // RETRIEVE BY ID
        public static Interns RetrieveById(int id)
        {
            DataTable dt = InternsData.RetrieveById(id);
            if (dt.Rows.Count == 0) return null;
            return ConvertRowToIntern(dt.Rows[0]);
        }

        // UPDATE
        public bool Update()
        {
            return InternsData.Update(_id, _fullName, _dateOfJoining, _availableLeave, _createdBy, _createdDate, _modifiedBy, _modifiedDate, _isDeleted);
        }

        // DELETE
        public bool Delete()
        {
            return InternsData.Delete(_id);
        }

        #endregion

        #region Helper
        private static Interns ConvertRowToIntern(DataRow row)
        {
            return new Interns(
                Convert.ToInt32(row["Id"]),
                row["FullName"].ToString(),
                Convert.ToDateTime(row["DateOfJoining"]),
                Convert.ToInt32(row["AvailableLeave"]),
                row["CreatedBy"].ToString(),
                Convert.ToDateTime(row["CreatedDate"]),
                row["ModifiedBy"].ToString(),
                Convert.ToDateTime(row["ModifiedDate"]),
                Convert.ToBoolean(row["IsDeleted"])
            );
        }
        #endregion
    }
}