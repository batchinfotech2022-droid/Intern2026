using Internsapp.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internsapp.BL
{
    public class Attendance
    {
        #region Fields

        private int _id;
        private int _internId;
        private DateTime _attendanceDate;
        private bool _status;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        #endregion

        #region Properties

        public int Id { get { return _id; } set { _id = value; } }
        public int InternId { get { return _internId; } set { _internId = value; } }
        public DateTime AttendanceDate { get { return _attendanceDate; } set { _attendanceDate = value; } }
        public bool Status { get { return _status; } set { _status = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }

        #endregion

        #region Constructor

        public Attendance()
        {
            _id = 0;
            _internId = 0;
            _attendanceDate = DateTime.Now;
            _status = false;
            _createdBy = "";
            _createdDate = DateTime.Now;
            _modifiedBy = "";
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public Attendance(int id, int internId, DateTime attendanceDate,
                          bool status, string createdBy, DateTime createdDate,
                          string modifiedBy, DateTime modifiedDate,
                          bool isDeleted)
        {
            _id = id;
            _internId = internId;
            _attendanceDate = attendanceDate;
            _status = status;
            _createdBy = createdBy;
            _createdDate = createdDate;
            _modifiedBy = modifiedBy;
            _modifiedDate = modifiedDate;
            _isDeleted = isDeleted;
        }

        #endregion

        #region CRUD

        public static int Create(string usrName,
                                 int internId,
                                 DateTime attendanceDate,
                                 bool status)
        {
            string createdBy = usrName;
            DateTime createdDate = DateTime.Now;
            string modifiedBy = usrName;
            DateTime modifiedDate = DateTime.Now;
            bool isDeleted = false;

            try
            {
                int res = AttendanceData.Create(internId,
                                                attendanceDate,
                                                status,
                                                createdBy,
                                                createdDate,
                                                modifiedBy,
                                                modifiedDate,
                                                isDeleted);

                Activity.Create(usrName, "Attendance", "Create",
                                DateTime.Now, true,
                                "InternId:" + internId.ToString());

                return res;
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Attendance", "Create",
                                DateTime.Now, false,
                                "InternId:" + internId.ToString());

                return -1;
            }
        }

        public static List<Attendance> RetrieveAll(string usrName)
        {
            List<Attendance> list = new List<Attendance>();

            try
            {
                DataTable dt = AttendanceData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    list.Add(ConvertReaderToObject(r));

                r.Close();
                dt.Dispose();

                Activity.Create(usrName, "Attendance", "RetrieveAll",
                                DateTime.Now, true, "All Records");
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Attendance", "RetrieveAll",
                                DateTime.Now, false, "All Records");
            }

            return list;
        }

        public static Attendance RetrieveById(string usrName, int id)
        {
            Attendance result = null;

            try
            {
                DataTable dt = AttendanceData.RetrieveById(id);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = ConvertReaderToObject(r);

                r.Close();
                dt.Dispose();

                Activity.Create(usrName, "Attendance", "RetrieveById",
                                DateTime.Now, true, id.ToString());
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Attendance", "RetrieveById",
                                DateTime.Now, false, id.ToString());
            }

            return result;
        }

        public bool Update(string usrName)
        {
            try
            {
                bool returnVal = AttendanceData.Update(Id,
                                                       InternId,
                                                       AttendanceDate,
                                                       Status,
                                                       CreatedBy,
                                                       CreatedDate,
                                                       ModifiedBy,
                                                       ModifiedDate,
                                                       IsDeleted);

                Activity.Create(usrName, "Attendance", "Update",
                                DateTime.Now, true,
                                "Id:" + Id.ToString());

                return returnVal;
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Attendance", "Update",
                                DateTime.Now, false,
                                "Id:" + Id.ToString());

                return false;
            }
        }

        public static bool Delete(string usrName, int id)
        {
            try
            {
                bool returnVal = AttendanceData.Delete(id);

                Activity.Create(usrName, "Attendance", "Delete",
                                DateTime.Now, true, id.ToString());

                return returnVal;
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Attendance", "Delete",
                                DateTime.Now, false, id.ToString());

                return false;
            }
        }

        #endregion

        #region Convert Reader

        private static Attendance ConvertReaderToObject(DataTableReader r)
        {
            return new Attendance(
                r.ToInt("Id"),
                r.ToInt("InternId"),
                r.ToDateTime("AttendanceDate"),
                r.ToBool("Status"),
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