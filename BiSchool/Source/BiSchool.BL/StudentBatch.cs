using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using BiSchool.DL;
//******************** StudentBatch ****************************//
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
        private DateTime _createddate;
        private string _createdby;
        private DateTime _modifieddate;
        private string _modifiedby;
        private bool _isdeleted;
        #endregion //Fields
        #region Props
        public int Id { get { return _id; } set { _id = value; } }
        public int Batchid { get { return _batchid; } set { _batchid = value; } }
        public string Batchtitle { get { return _batchtitle; } set { _batchtitle = value; } }
        public int Studentid { get { return _studentid; } set { _studentid = value; } }
        public string Studentname { get { return _studentname; } set { _studentname = value; } }
        public DateTime Createddate { get { return _createddate; } set { _createddate = value; } }
        public string Createdby { get { return _createdby; } set { _createdby = value; } }
        public DateTime Modifieddate { get { return _modifieddate; } set { _modifieddate = value; } }
        public string Modifiedby { get { return _modifiedby; } set { _modifiedby = value; } }
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
            _createddate = DateTime.Now;
            _createdby = string.Empty;
            _modifieddate = DateTime.Now;
            _modifiedby = string.Empty;
            _isdeleted = false;
        }
        public StudentBatch(int id, int batchid, string batchtitle, int studentid, string studentname, DateTime createddate, string createdby, DateTime modifieddate, string modifiedby, bool isdeleted)
        {
            _id = id;
            _batchid = batchid;
            _batchtitle = batchtitle;
            _studentid = studentid;
            _studentname = studentname;
            _createddate = createddate;
            _createdby = createdby;
            _modifieddate = modifieddate;
            _modifiedby = modifiedby;
            _isdeleted = isdeleted;
        }
        #endregion //CTOR
        #region CRUD
        public static int Create(string usrName, int batchid, int studentid)
        {
            DateTime createddate = DateTime.Today;
            string createdby = usrName;
            DateTime modifieddate = DateTime.Today;
            string modifiedby = usrName;
            bool isdeleted = false;
            try
            {
                int res = StudentBatchData.Create(batchid, studentid, createddate, createdby, modifieddate, modifiedby, isdeleted);
                Activity.Create(usrName, "StudentBatch", "Create", DateTime.Now, true, "Batchid:" + batchid.ToString() + " - " + "Studentid:" + studentid.ToString() + " - " + "Createddate:" + createddate.ToString() + " - " + "Createdby:" + createdby.ToString() + " - " + "Modifieddate:" + modifieddate.ToString() + " - " + "Modifiedby:" + modifiedby.ToString() + " - " + "Isdeleted:" + isdeleted.ToString());
                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "Create", DateTime.Now, false, "Batchid:" + batchid.ToString() + " - " + "Studentid:" + studentid.ToString() + " - " + " - " + "Createddate:" + createddate.ToString() + " - " + "Createdby:" + createdby.ToString() + " - " + "Modifieddate:" + modifieddate.ToString() + " - " + "Modifiedby:" + modifiedby.ToString() + " - " + "Isdeleted:" + isdeleted.ToString());
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
                bool returnVal = StudentBatchData.Update(Id, Batchid, Studentid, Createddate, Createdby, Modifieddate, Modifiedby, Isdeleted);
                Activity.Create(usrName, "StudentBatch", "Update", DateTime.Now, true, "Batchid:" + Batchid.ToString() + " - " + "Studentid:" + Studentid.ToString() + " - " + " - " + "Createddate:" + Createddate.ToString() + " - " + "Createdby:" + Createdby.ToString() + " - " + "Modifieddate:" + Modifieddate.ToString() + " - " + "Modifiedby:" + Modifiedby.ToString() + " - " + "Isdeleted:" + Isdeleted.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "Update", DateTime.Now, false, "Batchid:" + Batchid.ToString() + " - " + "Studentid:" + Studentid.ToString() + " - " + " - " + "Createddate:" + Createddate.ToString() + " - " + "Createdby:" + Createdby.ToString() + " - " + "Modifieddate:" + Modifieddate.ToString() + " - " + "Modifiedby:" + Modifiedby.ToString() + " - " + "Isdeleted:" + Isdeleted.ToString());
                throw new Exception("Update failed", ex);
            }
        }
        public static bool Delete(string usrName, int idValue)
        {
            try
            {
                bool returnVal = StudentBatchData.Delete(idValue);
                Activity.Create(usrName, "StudentBatch", "Delete", DateTime.Now, true, idValue.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "StudentBatch", "Delete", DateTime.Now, false, idValue.ToString());
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
                , r.ToInt("Batchid")
                , r.ToString("Batchtitle")
                , r.ToInt("Studentid")
                , r.ToString("Studentname")
                , r.ToDateTime("Createddate")
                , r.ToString("Createdby")
                , r.ToDateTime("Modifieddate")
                , r.ToString("Modifiedby")
                , r.ToBool("Isdeleted"));
        }
    } //StudentBatch
}