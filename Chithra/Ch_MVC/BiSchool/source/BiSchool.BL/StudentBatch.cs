using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BiSchool.DL;

namespace BiSchool.BL
{
    public class StudentBatch
    {
        #region Fields
        private int _id;
        private int _batchId;
        private string _batchTitle;
        private int _studentId;
        private string _studentName;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        #endregion //Fields
        #region Props
        public int Id { get { return _id; } set { _id = value; } }
        public int BatchId { get { return _batchId; } set { _batchId = value; } }
        public string BatchTitle { get { return _batchTitle; } set { _batchTitle = value; } }
        public int StudentId { get { return _studentId; } set { _studentId = value; } }
        public string StudentName { get { return _studentName; } set { _studentName = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }
        #endregion //Props
        #region CTOR
        public StudentBatch()
        {
            _id = 0;
            _batchId = 0;
            _batchTitle = string.Empty;
            _studentId = 0;
            _studentName = string.Empty;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }
        public StudentBatch(int Id, int BatchId, string BatchTitle, int StudentId, string StudentName, string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            _id = Id;
            _batchId = BatchId;
            _batchTitle = BatchTitle;
            _studentId = StudentId;
            _studentName = StudentName;
            _createdBy = CreatedBy;
            _createdDate = CreatedDate;
            _modifiedBy = ModifiedBy;
            _modifiedDate = ModifiedDate;
            _isDeleted = IsDeleted;
        }
        #endregion //CTOR
        #region CRUD
        public static int Create(string usrName, int BatchId, int StudentId)
        {
            string CreatedBy = usrName;
            DateTime CreatedDate = DateTime.Now;
            string ModifiedBy = usrName;
            DateTime ModifiedDate = DateTime.Now;
            bool IsDeleted = false;
            try
            {
                int res = StudentBatchData.Create(BatchId, StudentId, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);
                Activity.Create(usrName, "StudentBatch", "Create", DateTime.Now, true, "BatchId:" + BatchId.ToString() + " - " + "StudentId:" + StudentId.ToString() + " - " + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString());
                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "Create", DateTime.Now, true, "BatchId:" + BatchId.ToString() + " - " + "StudentId:" + StudentId.ToString() + " - " + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString());
                throw new Exception("Inserting failed", ex);
            }
        }
        public static List<StudentBatch> RetrieveAll(string usrName)
        {
            List<StudentBatch> studentbatchlist = new List<StudentBatch>();
            try
            {
                DataTable dt = StudentBatchData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();
                while (r.Read())
                    studentbatchlist.Add(convertReaderToObject(r));
                r.Close();
                dt.Dispose();
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "RetrieveAll", DateTime.Now, false, "All fields");
                throw new Exception("RetrieveAll failed", ex);
            }
            Activity.Create(usrName, "StudentBatch", "RetrieveAll", DateTime.Now, true, "All Fields");
            return studentbatchlist;
        }
        public static StudentBatch RetrieveById(string usrName, int id)
        {
            StudentBatch result = null;
            try
            {
                DataTable dt = StudentBatchData.RetrieveById(id);
                DataTableReader r = dt.CreateDataReader();
                if (r.Read())
                    result = convertReaderToObject(r);
                r.Close();
                dt.Dispose();
                Activity.Create(usrName, "StudentBatch", "RetrieveById", DateTime.Now, true, id.ToString());
                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "RetrieveById", DateTime.Now, false, id.ToString());
                throw new Exception("RetrieveById failed", ex);
            }
        }
        public bool Update(string usrName)
        {
            try
            {
                bool returnVal = StudentBatchData.Update(Id,  BatchId, StudentId, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);
                Activity.Create(usrName, "StudentBatch", "Update", DateTime.Now, true, "BatchId:" + BatchId.ToString() + " - " + "StudentId:" + StudentId.ToString() + " - " + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "Update", DateTime.Now, false, "BatchId:" + BatchId.ToString() + " - " + "StudentId:" + StudentId.ToString() + " - " + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString());
                throw new Exception("Update failed", ex);
            }
        }
        public static bool Delete(string usrName, int IdValue)
        {
            try
            {
                bool returnVal = StudentBatchData.Delete(IdValue);
                Activity.Create(usrName, "StudentBatch", "Delete", DateTime.Now, true, IdValue.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "Delete", DateTime.Now, false, IdValue.ToString());
                throw new Exception("Delete failed", ex);
            }
        }
        public bool Delete(string usrName)
        {
            try
            {
                bool returnVal = StudentBatchData.Delete(this.Id);
                Activity.Create(usrName, "StudentBatch", "Delete", DateTime.Now, true, this.Id.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "Delete", DateTime.Now, false, this.Id.ToString());
                throw new Exception("Delete failed", ex);
            }
        }
        #endregion //CRUD
        private static StudentBatch convertReaderToObject(DataTableReader r)
        {
            return new StudentBatch(r.ToInt("Id")
                , r.ToInt("BatchId")
                , r.ToString("BatchTitle")
                , r.ToInt("StudentId")
                , r.ToString("StudentName")
                , r.ToString("CreatedBy")
                , r.ToDateTime("CreatedDate")
                , r.ToString("ModifiedBy")
                , r.ToDateTime("ModifiedDate")
                , r.ToBool("IsDeleted"));
        }
    } //StudentBatch
} //BiSchool.BL