using System;
using System.Collections.Generic;
using System.Data;
using BiSchool.DL;

//******************** Batch ****************************//

namespace BiSchool.BL
{
    public class Batch
    {
        #region Fields

        private int _id;
        private string _title;
        private string _timing;
        private string _subject;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        #endregion //Fields

        #region Props

        public int Id { get { return _id; } set { _id = value; } }
        public string Title { get { return _title; } set { _title = value; } }
        public string Timing { get { return _timing; } set { _timing = value; } }
        public string Subject { get { return _subject; } set { _subject = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }

        #endregion //Props

        #region CTOR

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

        public Batch(int id, string title, string timing, string subject,
            string createdBy, DateTime createdDate,
            string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            _id = id;
            _title = title;
            _timing = timing;
            _subject = subject;
            _createdBy = createdBy;
            _createdDate = createdDate;
            _modifiedBy = modifiedBy;
            _modifiedDate = modifiedDate;
            _isDeleted = isDeleted;
        }

        #endregion //CTOR

        #region CRUD

        public static int Create(string usrName, string title, string timing, string subject)
        {
            string createdBy = usrName;
            DateTime createdDate = DateTime.Now;
            string modifiedBy = usrName;
            DateTime modifiedDate = DateTime.Now;
            bool isDeleted = false;

            try
            {
                int res = BatchData.Create(
                    title, timing, subject,
                    createdBy, createdDate,
                    modifiedBy, modifiedDate, isDeleted);

                Activity.Create(usrName, "Batch", "Create",
                    DateTime.Now, true,
                    "Title:" + title + " - Timing:" + timing + " - Subject:" + subject);

                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "Create",
                    DateTime.Now, false,
                    "Title:" + title + " - Timing:" + timing + " - Subject:" + subject);

                throw new Exception("Inserting failed", ex);
            }
        }

        public static List<Batch> RetrieveAll(string usrName)
        {
            List<Batch> list = new List<Batch>();

            try
            {
                DataTable dt = BatchData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    list.Add(convertReaderToObject(r));

                r.Close();
                dt.Dispose();
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "RetrieveAll",
                    DateTime.Now, false, "All Fields");

                throw new Exception("RetrieveAll failed", ex);
            }

            Activity.Create(usrName, "Batch", "RetrieveAll",
                DateTime.Now, true, "All Fields");

            return list;
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

                Activity.Create(usrName, "Batch", "RetrieveById",
                    DateTime.Now, true, id.ToString());

                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "RetrieveById",
                    DateTime.Now, false, id.ToString());

                throw new Exception("RetrieveById failed", ex);
            }
        }

        public bool Update(string usrName)
        {
            try
            {
                bool res = BatchData.Update(
                    Id, Title, Timing, Subject,
                    CreatedBy, CreatedDate,
                    ModifiedBy, ModifiedDate, IsDeleted);

                Activity.Create(usrName, "Batch", "Update",
                    DateTime.Now, true, Id.ToString());

                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "Update",
                    DateTime.Now, false, Id.ToString());

                throw new Exception("Update failed", ex);
            }
        }

        public static bool Delete(string usrName, int id)
        {
            try
            {
                bool res = BatchData.Delete(id, usrName, DateTime.Now);

                Activity.Create(usrName, "Batch", "Delete",
                    DateTime.Now, true, id.ToString());

                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "Delete",
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

                bool returnVal = BatchData.Delete(this.Id, modifiedBy, modifiedDate);

                Activity.Create(usrName, "Batch", "Delete",
                    DateTime.Now, true, this.Id.ToString());

                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Batch", "Delete",
                    DateTime.Now, false, this.Id.ToString());

                throw new Exception("Delete failed", ex);
            }
        }
        #endregion //CRUD

        private static Batch convertReaderToObject(DataTableReader r)
        {
            return new Batch(
                r.ToInt("Id"),
                r.ToString("Title"),
                r.ToString("Timing"),
                r.ToString("Subject"),
                r.ToString("CreatedBy"),
                r.ToDateTime("CreatedDate"),
                r.ToString("ModifiedBy"),
                r.ToDateTime("ModifiedDate"),
                r.ToBool("IsDeleted")
            );
        }
    }
}