using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using Internsapp.DL;

namespace Internsapp.BL
{
    public class Leave
    {
        private int _id;
        private int _internId;
        private string _internName;
        private DateTime _fromDate;
        private DateTime _toDate;
        private string _reason;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        public int Id { get { return _id; } set { _id = value; } }
        public int InternId { get { return _internId; } set { _internId = value; } }
        public string InternName { get { return _internName; } set { _internName = value; } }
        public DateTime FromDate { get { return _fromDate; } set { _fromDate = value; } }
        public DateTime ToDate { get { return _toDate; } set { _toDate = value; } }
        public string Reason { get { return _reason; } set { _reason = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }

        public Leave()
        {
            _id = 0;
            _internId = 0;
            _internName = string.Empty;
            _fromDate = DateTime.Now;
            _toDate = DateTime.Now;
            _reason = string.Empty;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public Leave(int Id, int InternId, string InternName, DateTime FromDate, DateTime ToDate, string Reason,
            string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            _id = Id;
            _internId = InternId;
            _internName = InternName;
            _fromDate = FromDate;
            _toDate = ToDate;
            _reason = Reason;
            _createdBy = CreatedBy;
            _createdDate = CreatedDate;
            _modifiedBy = ModifiedBy;
            _modifiedDate = ModifiedDate;
            _isDeleted = IsDeleted;
        }

        public static int Create(string usrName, int InternId, DateTime FromDate, DateTime ToDate, string Reason)
        {
            string CreatedBy = usrName;
            DateTime CreatedDate = DateTime.Now;
            string ModifiedBy = usrName;
            DateTime ModifiedDate = DateTime.Now;
            bool IsDeleted = false;

            try
            {
                int res = LeaveData.Create(InternId, FromDate, ToDate, Reason, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);
                Activity.Create(usrName, "Leave", "Create", DateTime.Now, true, InternId.ToString());
                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Leave", "Create", DateTime.Now, false, InternId.ToString());
                throw new Exception("Insert failed", ex);
            }
        }

        public static List<Leave> RetrieveAll(string usrName)
        {
            List<Leave> res = new List<Leave>();

            try
            {
                DataTable dt = LeaveData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    res.Add(convertReaderToObject(r));

                r.Close(); dt.Dispose();
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Leave", "RetrieveAll", DateTime.Now, false, "All");
                throw;
            }

            Activity.Create(usrName, "Leave", "RetrieveAll", DateTime.Now, true, "All");
            return res;
        }

        public static Leave RetrieveById(string usrName, int Id)
        {
            Leave result = null;

            try
            {
                DataTable dt = LeaveData.RetrieveById(Id);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = convertReaderToObject(r);

                r.Close(); dt.Dispose();
                Activity.Create(usrName, "Leave", "RetrieveById", DateTime.Now, true, Id.ToString());
                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Leave", "RetrieveById", DateTime.Now, false, Id.ToString());
                throw new Exception("RetrieveById failed", ex);
            }
        }

        public bool Update(string usrName)
        {
            try
            {
                bool returnVal = LeaveData.Update(Id, InternId, FromDate, ToDate, Reason, ModifiedBy, ModifiedDate, IsDeleted);
                Activity.Create(usrName, "Leave", "Update", DateTime.Now, true, InternId.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Leave", "Update", DateTime.Now, false, InternId.ToString());
                throw new Exception("Update failed", ex);
            }
        }

        public static bool Delete(string usrName, int Id)
        {
            try
            {
                bool returnVal = LeaveData.Delete(Id, usrName, DateTime.Now);
                Activity.Create(usrName, "Leave", "Delete", DateTime.Now, true, Id.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Leave", "Delete", DateTime.Now, false, Id.ToString());
                throw new Exception("Delete failed", ex);
            }
        }

        private static Leave convertReaderToObject(DataTableReader r)
        {
            return new Leave(
                r.ToInt("Id"),
                r.ToInt("InternId"),
                r.ToString("InternName"),
                r.ToDateTime("FromDate"),
                r.ToDateTime("ToDate"),
                r.ToString("Reason"),
                r.ToString("CreatedBy"),
                r.ToDateTime("CreatedDate"),
                r.ToString("ModifiedBy"),
                r.ToDateTime("ModifiedDate"),
                r.ToBool("IsDeleted")
            );
        }
    }
}