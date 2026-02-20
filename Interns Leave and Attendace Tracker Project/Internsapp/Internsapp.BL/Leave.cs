using Internsapp.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internsapp.BL
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

        #region Properties

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

        #region Constructor

        public Leave()
        {
            _id = 0;
            _internId = 0;
            _fromDate = DateTime.Now;
            _toDate = DateTime.Now;
            _reason = "";
            _createdBy = "";
            _createdDate = DateTime.Now;
            _modifiedBy = "";
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public Leave(int id, int internId,
                     DateTime fromDate, DateTime toDate,
                     string reason,
                     string createdBy, DateTime createdDate,
                     string modifiedBy, DateTime modifiedDate,
                     bool isDeleted)
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

        public static int Create(string usrName,
                                 int internId,
                                 DateTime fromDate,
                                 DateTime toDate,
                                 string reason)
        {
            string createdBy = usrName;
            DateTime createdDate = DateTime.Now;
            string modifiedBy = usrName;
            DateTime modifiedDate = DateTime.Now;
            bool isDeleted = false;

            try
            {
                int res = LeaveData.Create(internId,
                                           fromDate,
                                           toDate,
                                           reason,
                                           createdBy,
                                           createdDate,
                                           modifiedBy,
                                           modifiedDate,
                                           isDeleted);

                Activity.Create(usrName, "Leave", "Create",
                                DateTime.Now, true,
                                "InternId:" + internId.ToString());

                return res;
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Leave", "Create",
                                DateTime.Now, false,
                                "InternId:" + internId.ToString());

                return -1;
            }
        }

        public static List<Leave> RetrieveAll(string usrName)
        {
            List<Leave> list = new List<Leave>();

            try
            {
                DataTable dt = LeaveData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    list.Add(ConvertReaderToObject(r));

                r.Close();
                dt.Dispose();

                Activity.Create(usrName, "Leave", "RetrieveAll",
                                DateTime.Now, true, "All Records");
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Leave", "RetrieveAll",
                                DateTime.Now, false, "All Records");
            }

            return list;
        }

        public static Leave RetrieveById(string usrName, int id)
        {
            Leave result = null;

            try
            {
                DataTable dt = LeaveData.RetrieveById(id);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = ConvertReaderToObject(r);

                r.Close();
                dt.Dispose();

                Activity.Create(usrName, "Leave", "RetrieveById",
                                DateTime.Now, true, id.ToString());
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Leave", "RetrieveById",
                                DateTime.Now, false, id.ToString());
            }

            return result;
        }

        public bool Update(string usrName)
        {
            try
            {
                bool returnVal = LeaveData.Update(Id,
                                                  InternId,
                                                  FromDate,
                                                  ToDate,
                                                  Reason,
                                                  CreatedBy,
                                                  CreatedDate,
                                                  ModifiedBy,
                                                  ModifiedDate,
                                                  IsDeleted);

                Activity.Create(usrName, "Leave", "Update",
                                DateTime.Now, true,
                                "Id:" + Id.ToString());

                return returnVal;
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Leave", "Update",
                                DateTime.Now, false,
                                "Id:" + Id.ToString());

                return false;
            }
        }

        public static bool Delete(string usrName, int id)
        {
            try
            {
                bool returnVal = LeaveData.Delete(id);

                Activity.Create(usrName, "Leave", "Delete",
                                DateTime.Now, true, id.ToString());

                return returnVal;
            }
            catch (Exception)
            {
                Activity.Create(usrName, "Leave", "Delete",
                                DateTime.Now, false, id.ToString());

                return false;
            }
        }

        #endregion

        #region Convert Reader

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

        #endregion
    }
}