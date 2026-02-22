using System;
using System.Collections.Generic;
using System.Data;
using BiSchool.DL;


namespace BiSchool.BL
{
    public class Fees
    {
        #region Fields

        private int _id;
        private int _studentId;
        private string _studentName;
        private decimal _amount;
        private DateTime _date;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        #endregion //Fields

        #region Props

        public int Id { get { return _id; } set { _id = value; } }
        public int StudentId { get { return _studentId; } set { _studentId = value; } }
        public string StudentName { get { return _studentName; } set { _studentName = value; } }
        public decimal Amount { get { return _amount; } set { _amount = value; } }
        public DateTime Date { get { return _date; } set { _date = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }

        #endregion //Props

        #region CTOR

        public Fees()
        {
            _id = 0;
            _studentId = 0;
            _studentName = string.Empty;
            _amount = 0;
            _date = DateTime.Now;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public Fees(int id, int studentId, string studentName, decimal amount, DateTime date,
            string createdBy, DateTime createdDate,
            string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            _id = id;
            _studentId = studentId;
            _studentName = studentName;
            _amount = amount;
            _date = date;
            _createdBy = createdBy;
            _createdDate = createdDate;
            _modifiedBy = modifiedBy;
            _modifiedDate = modifiedDate;
            _isDeleted = isDeleted;
        }

        #endregion //CTOR

        #region CRUD

        public static int Create(string usrName, int studentId, decimal amount, DateTime date)
        {
            string createdBy = usrName;
            DateTime createdDate = DateTime.Now;
            string modifiedBy = usrName;
            DateTime modifiedDate = DateTime.Now;
            bool isDeleted = false;

            try
            {
                int res = FeesData.Create(
                    studentId, amount, date,
                    createdBy, createdDate,
                    modifiedBy, modifiedDate, isDeleted
                );

                Activity.Create(usrName, "Fees", "Create",
                    DateTime.Now, true,
                    "StudentId:" + studentId + " Amount:" + amount);

                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Fees", "Create",
                    DateTime.Now, false,
                    "StudentId:" + studentId + " Amount:" + amount);

                throw new Exception("Inserting failed", ex);
            }
        }

        public static List<Fees> RetrieveAll(string usrName)
        {
            List<Fees> list = new List<Fees>();

            try
            {
                DataTable dt = FeesData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    list.Add(convertReaderToObject(r));

                r.Close();
                dt.Dispose();
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Fees", "RetrieveAll",
                    DateTime.Now, false, "All Fields");

                throw new Exception("RetrieveAll failed", ex);
            }

            Activity.Create(usrName, "Fees", "RetrieveAll",
                DateTime.Now, true, "All Fields");

            return list;
        }

        public static Fees RetrieveById(string usrName, int id)
        {
            Fees result = null;

            try
            {
                DataTable dt = FeesData.RetrieveById(id);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = convertReaderToObject(r);

                r.Close();
                dt.Dispose();

                Activity.Create(usrName, "Fees", "RetrieveById",
                    DateTime.Now, true, id.ToString());

                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Fees", "RetrieveById",
                    DateTime.Now, false, id.ToString());

                throw new Exception("RetrieveById failed", ex);
            }
        }

        public bool Update(string usrName)
        {
            try
            {
                bool res = FeesData.Update(
                    Id, StudentId, Amount, Date,
                    ModifiedBy, ModifiedDate, IsDeleted
                );

                Activity.Create(usrName, "Fees", "Update",
                    DateTime.Now, true, Id.ToString());

                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Fees", "Update",
                    DateTime.Now, false, Id.ToString());

                throw new Exception("Update failed", ex);
            }
        }

        public static bool Delete(string usrName, int id)
        {
            try
            {
                bool res = FeesData.Delete(id, usrName, DateTime.Now);

                Activity.Create(usrName, "Fees", "Delete",
                    DateTime.Now, true, id.ToString());

                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Fees", "Delete",
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

                bool returnVal = FeesData.Delete(this.Id, modifiedBy, modifiedDate);

                Activity.Create(usrName, "Fees", "Delete",
                    DateTime.Now, true, this.Id.ToString());

                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Fees", "Delete",
                    DateTime.Now, false, this.Id.ToString());

                throw new Exception("Delete failed", ex);
            }
        }

        #endregion //CRUD

        private static Fees convertReaderToObject(DataTableReader r)
        {
            return new Fees(
                r.ToInt("Id"),
                r.ToInt("StudentId"),
                r.ToString("StudentName"),
                r.ToDecimal("Amount"),
                r.ToDateTime("Date"),
                r.ToString("CreatedBy"),
                r.ToDateTime("CreatedDate"),
                r.ToString("ModifiedBy"),
                r.ToDateTime("ModifiedDate"),
                r.ToBool("IsDeleted")
            );
        }
    }
}