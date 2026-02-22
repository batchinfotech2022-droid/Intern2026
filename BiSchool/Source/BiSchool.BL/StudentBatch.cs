using System;
using System.Collections.Generic;
using System.Data;
using BiSchool.DL;


namespace BiSchool.BL
{
    public class StudentBatch
    {
        #region Fields

        private int _id;
        private int _batchid;
        private string _batchtitle;      
        private int _studentid;
        private string _studentname;    
        private string _createdby;
        private DateTime _createddate;
        private string _modifiedby;
        private DateTime _modifieddate;
        private bool _isdeleted;

        #endregion //Fields

        #region Props

        public int Id { get { return _id; } set { _id = value; } }
        public int Batchid { get { return _batchid; } set { _batchid = value; } }
        public string Batchtitle { get { return _batchtitle; } set { _batchtitle = value; } }
        public int Studentid { get { return _studentid; } set { _studentid = value; } }
        public string Studentname { get { return _studentname; } set { _studentname = value; } }
        public string Createdby { get { return _createdby; } set { _createdby = value; } }
        public DateTime Createddate { get { return _createddate; } set { _createddate = value; } }
        public string Modifiedby { get { return _modifiedby; } set { _modifiedby = value; } }
        public DateTime Modifieddate { get { return _modifieddate; } set { _modifieddate = value; } }
        public bool Isdeleted { get { return _isdeleted; } set { _isdeleted = value; } }

        #endregion //Props

        #region CTOR

        public StudentBatch()
        {
            _id = 0;
            _batchid = 0;
            _batchtitle = string.Empty;
            _studentid = 0;
            _studentname = string.Empty;
            _createdby = string.Empty;
            _createddate = DateTime.Now;
            _modifiedby = string.Empty;
            _modifieddate = DateTime.Now;
            _isdeleted = false;
        }

        public StudentBatch(
            int id,
            int batchid,
            string batchtitle,
            int studentid,
            string studentname,
            string createdby,
            DateTime createddate,
            string modifiedby,
            DateTime modifieddate,
            bool isdeleted)
        {
            _id = id;
            _batchid = batchid;
            _batchtitle = batchtitle;
            _studentid = studentid;
            _studentname = studentname;
            _createdby = createdby;
            _createddate = createddate;
            _modifiedby = modifiedby;
            _modifieddate = modifieddate;
            _isdeleted = isdeleted;
        }

        #endregion //CTOR

        #region CRUD

        public static int Create(string usrName, int batchid, int studentid)
        {
            string createdby = usrName;
            DateTime createddate = DateTime.Now;
            string modifiedby = usrName;
            DateTime modifieddate = DateTime.Now;
            bool isdeleted = false;

            try
            {
                int res = StudentBatchData.Create(
                    batchid,
                    studentid,
                    createdby,
                    createddate,
                    modifiedby,
                    modifieddate,
                    isdeleted);

                Activity.Create(usrName, "StudentBatch", "Create",
                    DateTime.Now, true,
                    "BatchId:" + batchid + " StudentId:" + studentid);

                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "Create",
                    DateTime.Now, false,
                    "BatchId:" + batchid + " StudentId:" + studentid);

                throw new Exception("Create failed", ex);
            }
        }

        public static List<StudentBatch> RetrieveAll(string usrName)
        {
            List<StudentBatch> list = new List<StudentBatch>();

            try
            {
                DataTable dt = StudentBatchData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    list.Add(convertReaderToObject(r));

                r.Close();
                dt.Dispose();
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "RetrieveAll",
                    DateTime.Now, false, "All Fields");

                throw new Exception("RetrieveAll failed", ex);
            }

            Activity.Create(usrName, "StudentBatch", "RetrieveAll",
                DateTime.Now, true, "All Fields");

            return list;
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

                Activity.Create(usrName, "StudentBatch", "RetrieveById",
                    DateTime.Now, true, id.ToString());

                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "RetrieveById",
                    DateTime.Now, false, id.ToString());

                throw new Exception("RetrieveById failed", ex);
            }
        }

        public bool Update(string usrName)
        {
            try
            {
                Modifiedby = usrName;
                Modifieddate = DateTime.Now;

                bool returnVal = StudentBatchData.Update(
                    Id,
                    Batchid,
                    Studentid,
                    Modifiedby,
                    Modifieddate,
                    Isdeleted
                );

                Activity.Create(
                    usrName,
                    "StudentBatch",
                    "Update",
                    DateTime.Now,
                    true,
                    "Id:" + Id + " BatchId:" + Batchid + " StudentId:" + Studentid
                );

                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(
                    usrName,
                    "StudentBatch",
                    "Update",
                    DateTime.Now,
                    false,
                    "Id:" + Id
                );

                throw new Exception("Update failed", ex);
            }
        }

        public static bool Delete(string usrName, int id)
        {
            try
            {
                bool res = StudentBatchData.Delete(id, usrName, DateTime.Now);

                Activity.Create(usrName, "StudentBatch", "Delete",
                    DateTime.Now, true, id.ToString());

                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "Delete",
                    DateTime.Now, false, id.ToString());

                throw new Exception("Delete failed", ex);
            }
        }

        public bool Delete(string usrName)
        {
            try
            {
                string modifiedBy = usrName;
                DateTime modifiedDate = DateTime.Now;

                bool returnVal = StudentBatchData.Delete(this.Id, modifiedBy, modifiedDate);

                Activity.Create(usrName, "StudentBatch", "Delete",
                    DateTime.Now, true, this.Id.ToString());

                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "Delete",
                    DateTime.Now, false, this.Id.ToString());

                throw new Exception("Delete failed", ex);
            }
        }

        #endregion //CRUD

        private static StudentBatch convertReaderToObject(DataTableReader r)
        {
            return new StudentBatch(
                r.ToInt("Id"),
                r.ToInt("BatchId"),
                r.ToString("BatchTitle"),
                r.ToInt("StudentId"),
                r.ToString("StudentName"),
                r.ToString("CreatedBy"),
                r.ToDateTime("CreatedDate"),
                r.ToString("ModifiedBy"),
                r.ToDateTime("ModifiedDate"),
                r.ToBool("IsDeleted")
            );
        }
    }
}