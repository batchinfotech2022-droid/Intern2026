using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using Internsapp.DL;

namespace Internsapp.BL
{
    public class Attendance
    {
        private int _id;
        private int _internId;
        private string _internName;
        private DateTime _attendanceDate;
        private string _status;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        public int Id { get { return _id; } set { _id = value; } }
        public int InternId { get { return _internId; } set { _internId = value; } }
        public string InternName { get { return _internName; } set { _internName = value; } }
        public DateTime AttendanceDate { get { return _attendanceDate; } set { _attendanceDate = value; } }
        public string Status { get { return _status; } set { _status = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }

        public Attendance()
        {
            _id = 0;
            _internId = 0;
            _internName = string.Empty;
            _attendanceDate = DateTime.Now;
            _status = string.Empty;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public Attendance(int Id, int InternId, string InternName, DateTime AttendanceDate, string Status,
            string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            _id = Id;
            _internId = InternId;
            _internName = InternName;
            _attendanceDate = AttendanceDate;
            _status = Status;
            _createdBy = CreatedBy;
            _createdDate = CreatedDate;
            _modifiedBy = ModifiedBy;
            _modifiedDate = ModifiedDate;
            _isDeleted = IsDeleted;
        }

        public static int Create(string usrName, int InternId, DateTime AttendanceDate, string Status)
        {
            string CreatedBy = usrName;
            DateTime CreatedDate = DateTime.Now;
            string ModifiedBy = usrName;
            DateTime ModifiedDate = DateTime.Now;
            bool IsDeleted = false;

            try
            {
                int res = AttendanceData.Create(InternId, AttendanceDate, Status, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);
                Activity.Create(usrName, "Attendance", "Create", DateTime.Now, true, InternId.ToString());
                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Attendance", "Create", DateTime.Now, false, InternId.ToString());
                throw new Exception("Insert failed", ex);
            }
        }

        public static List<Attendance> RetrieveAll(string usrName)
        {
            List<Attendance> res = new List<Attendance>();

            try
            {
                DataTable dt = AttendanceData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    res.Add(convertReaderToObject(r));

                r.Close(); dt.Dispose();
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Attendance", "RetrieveAll", DateTime.Now, false, "All");
                throw;
            }

            Activity.Create(usrName, "Attendance", "RetrieveAll", DateTime.Now, true, "All");
            return res;
        }

        public static Attendance RetrieveById(string usrName, int Id)
        {
            Attendance result = null;

            try
            {
                DataTable dt = AttendanceData.RetrieveById(Id);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = convertReaderToObject(r);

                r.Close(); dt.Dispose();
                Activity.Create(usrName, "Attendance", "RetrieveById", DateTime.Now, true, Id.ToString());
                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Attendance", "RetrieveById", DateTime.Now, false, Id.ToString());
                throw new Exception("RetrieveById failed", ex);
            }
        }

        public bool Update(string usrName)
        {
            try
            {
                bool returnVal = AttendanceData.Update(
    Id,
    InternId,
    AttendanceDate,
    Status,
    usrName,
    DateTime.Now,
    IsDeleted
);
                Activity.Create(usrName, "Attendance", "Update", DateTime.Now, true, InternId.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Attendance", "Update", DateTime.Now, false, InternId.ToString());
                throw new Exception("Update failed", ex);
            }
        }

        public static bool Delete(string usrName, int Id)
        {
            try
            {
                bool returnVal = AttendanceData.Delete(Id, usrName, DateTime.Now);
                Activity.Create(usrName, "Attendance", "Delete", DateTime.Now, true, Id.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Attendance", "Delete", DateTime.Now, false, Id.ToString());
                throw new Exception("Delete failed", ex);
            }
        }

        private static Attendance convertReaderToObject(DataTableReader r)
        {
            return new Attendance(
                r.ToInt("Id"),
                r.ToInt("InternId"),
                r.ToString("InternName"),
                r.ToDateTime("AttendanceDate"),
                r.ToString("Status"),
                r.ToString("CreatedBy"),
                r.ToDateTime("CreatedDate"),
                r.ToString("ModifiedBy"),
                r.ToDateTime("ModifiedDate"),
                r.ToBool("IsDeleted")
            );
        }
    }
}