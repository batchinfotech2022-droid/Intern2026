using InternLAapp.DAL;
using InternLAapp.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace InternLAapp.ORM
{
    public class Leave
    {
        #region Fields
        private int _id;
        private int _internId;
        private DateTime _fromDate;
        private DateTime _toDate;
        private string _reason;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;
        #endregion

        #region Props
        public int Id { get { return _id; } set { _id = value; } }
        public int InternId { get { return _internId; } set { _internId = value; } }
        public DateTime FromDate { get { return _fromDate; } set { _fromDate = value; } }
        public DateTime ToDate { get { return _toDate; } set { _toDate = value; } }
        public string Reason { get { return _reason; } set { _reason = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }
        #endregion

        #region CTOR
        public Leave()
        {
            _id = 0;
            _internId = 0;
            _fromDate = DateTime.Now;
            _toDate = DateTime.Now;
            _reason = string.Empty;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public Leave(int id, int internId, DateTime fromDate, DateTime toDate, string reason, string createdBy, DateTime createdDate, string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            _id = id;
            _internId = internId;
            _fromDate = fromDate;
            _toDate = toDate;
            _reason = reason;
            _createdBy = createdBy;
            _createdDate = createdDate;
            _modifiedBy = modifiedBy;
            _modifiedDate = modifiedDate;
            _isDeleted = isDeleted;
        }
        #endregion

        #region CRUD
        public static int Create(string usrName, int internId, DateTime fromDate, DateTime toDate, string reason)
        {
            string createdBy = usrName;
            DateTime createdDate = DateTime.Today;
            string modifiedBy = usrName;
            DateTime modifiedDate = DateTime.Today;
            bool isDeleted = false;

            return LeaveData.Create(internId, fromDate, toDate, reason, createdBy, createdDate, modifiedBy, modifiedDate, isDeleted);
        }

        public static List<Leave> RetrieveAll()
        {
            List<Leave> leaveList = new List<Leave>();
            DataTable dt = LeaveData.RetrieveAll();
            DataTableReader r = dt.CreateDataReader();
            while (r.Read())
            {
                leaveList.Add(ConvertReaderToObject(r));
            }
            r.Close();
            dt.Dispose();
            return leaveList;
        }

        public bool Update()
        {
            return LeaveData.Update(Id, InternId, FromDate, ToDate, Reason, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);
        }

        public bool Delete()
        {
            return LeaveData.Delete(Id);
        }

        #endregion

        private static Leave ConvertReaderToObject(DataTableReader r)
        {
            return new Leave(
                r.ToInt("Id"),
                r.ToInt("InternId"),
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