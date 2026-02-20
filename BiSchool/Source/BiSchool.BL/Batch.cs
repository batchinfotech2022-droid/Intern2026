using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using BiSchool.DL;

namespace BiSchool.BL
{
    public class Batch
    {
        private int _id;
        private string _title;
        private string _timing;
        private string _subject;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        public int Id { get { return _id; } set { _id = value; } }
        public string Title { get { return _title; } set { _title = value; } }
        public string Timing { get { return _timing; } set { _timing = value; } }
        public string Subject { get { return _subject; } set { _subject = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }
        public Batch()
        {
            _id = 0;
            _title = string.Empty;
            _timing = string.Empty;
            _subject = string.Empty;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }
        public Batch(int Id, string Title, string Timing, string Subject, string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            _id = Id;
            _title = Title;
            _timing = Timing;
            _subject = Subject;
            _createdBy = CreatedBy;
            _createdDate = CreatedDate;
            _modifiedBy = ModifiedBy;
            _modifiedDate = ModifiedDate;
            _isDeleted = IsDeleted;
        }
        public static int Create(string usrName, string Title, string Timing, string Subject)
        {
            string CreatedBy = usrName;
            DateTime CreatedDate = DateTime.Now;
            string ModifiedBy = usrName;
            DateTime ModifiedDate = DateTime.Now;
            bool IsDeleted = false;

            try
            {
                int res = BatchData.Create(Title, Timing, Subject,
                    CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);

                Activity.Create(usrName, "Batch", "Create", DateTime.Now, true, "Title:" + Title.ToString() + " - " + "Timing:" + Timing.ToString() + " - " + "Subject:" + Subject.ToString() + " - " + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString());
                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "Create", DateTime.Now, false, "Title:" + Title.ToString() + " - " + "Timing:" + Timing.ToString() + " - " + "Subject:" + Subject.ToString() + " - " + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString());
                throw new Exception("Inserting failed", ex);
            }
        }
        public static List<Batch> RetrieveAll(string usrName)
        {
            List<Batch> batchlist = new List<Batch>();
            try
            {
                DataTable dt = BatchData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();
                while (r.Read())
                    batchlist.Add(convertReaderToObject(r));
                r.Close();
                dt.Dispose();
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "RetrieveAll", DateTime.Now, false, "All fields");
                throw new Exception("RetrieveAll failed", ex);
            }
            Activity.Create(usrName, "Batch", "RetrieveAll", DateTime.Now, true, "All Fields");
            return batchlist;
        }
        public static Batch RetrieveById(string usrName, int id)
        {
            Batch result = null;
            try
            {
                DataTable dt = BatchData.RetrieveById(id);
                DataTableReader r = dt.CreateDataReader();
                if (r.Read())
                    result = convertReaderToObject(r);
                r.Close();
                dt.Dispose();
                Activity.Create(usrName, "Batch", "RetrieveById", DateTime.Now, true, id.ToString());
                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "RetrieveById", DateTime.Now, false, id.ToString());
                throw new Exception("RetrieveById failed", ex);
            }
        }
        public bool Update(string usrName)
        {
            try
            {
                bool returnVal = BatchData.Update(Id, Title, Timing, Subject, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);
                Activity.Create(usrName, "Batch", "Update", DateTime.Now, true, "Title:" + Title.ToString() + " - " + "Timing:" + Timing.ToString() + " - " + "Subject:" + Subject.ToString() + " - " + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "Update", DateTime.Now, false, "Title:" + Title.ToString() + " - " + "Timing:" + Timing.ToString() + " - " + "Subject:" + Subject.ToString() + " - " + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString());
                throw new Exception("Update failed", ex);
            }
        }
        public static bool Delete(string usrName, int id)
        {
            try
            {
                bool returnVal = BatchData.Delete(id,usrName);
                Activity.Create(usrName, "Batch", "Delete", DateTime.Now, true, id.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "Delete", DateTime.Now, false, id.ToString());
                throw new Exception("Delete failed", ex);
            }
        }
        public bool Delete(string usrName)
        {
            try
            {
                bool returnVal = BatchData.Delete(Id, usrName);
                Activity.Create(usrName, "Batch", "Delete", DateTime.Now, true, this.Id.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "Delete", DateTime.Now, false, this.Id.ToString());
                throw new Exception("Delete failed", ex);
            }
        }

        private static Batch convertReaderToObject(DataTableReader r)
        {
            return new Batch(r.ToInt("Id")
                , r.ToString("Title")
                , r.ToString("Timing")
                , r.ToString("Subject")
                , r.ToString("CreatedBy")
                , r.ToDateTime("CreatedDate")
                , r.ToString("ModifiedBy")
                , r.ToDateTime("ModifiedDate")
                , r.ToBool("IsDeleted"));
        }
    } 
} 