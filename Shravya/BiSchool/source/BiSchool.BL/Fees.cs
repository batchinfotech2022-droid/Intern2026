using BiSchool.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


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

            public Fees(int Id, int StudentId, string StudentName, decimal Amount, DateTime Date,
                        string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
            {
                _id = Id;
                _studentId = StudentId;
                _studentName = StudentName;
                _amount = Amount;
                _date = Date;
                _createdBy = CreatedBy;
                _createdDate = CreatedDate;
                _modifiedBy = ModifiedBy;
                _modifiedDate = ModifiedDate;
                _isDeleted = IsDeleted;

            }
            #endregion //CTOR

            #region CRUD
            public static int Create(string usrName, int StudentId, decimal Amount, DateTime Date)
            {
                string CreatedBy = usrName;
                DateTime CreatedDate = DateTime.Now;
                string ModifiedBy = usrName;
                DateTime ModifiedDate = DateTime.Now;
                bool IsDeleted = false;

                try
                {
                    int res = FeesData.Create(StudentId, Amount, Date, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);
                    Activity.Create(usrName, "Fees", "Create", DateTime.Now, true,
                        "StudentId:" + StudentId.ToString() + " - " +
                        "Amount:" + Amount.ToString() + " - " +
                        "Date:" + Date.ToString() + " - " +
                      "CreatedBy:" + CreatedBy.ToString() + " - " +
                      "CreatedDate:" + CreatedDate.ToString() + " - " +
                      "ModifiedBy:" + ModifiedBy.ToString() + " - " +
                      "ModifiedDate:" + ModifiedDate.ToString() + " - " +
                      "IsDeleted:" + IsDeleted.ToString());
                    return res;
                }
                catch (Exception ex)
                {
                    Activity.Create(usrName, "Fees", "Create", DateTime.Now, false,
                        "StudentId:" + StudentId.ToString() + " - " +
                        "Amount:" + Amount.ToString() + " - " +
                        "Date:" + Date.ToString() + " - " +
                        "CreatedBy:" + CreatedBy.ToString() + " - " +
                      "CreatedDate:" + CreatedDate.ToString() + " - " +
                      "ModifiedBy:" + ModifiedBy.ToString() + " - " +
                      "ModifiedDate:" + ModifiedDate.ToString() + " - " +
                      "IsDeleted:" + IsDeleted.ToString());
                    throw new Exception("Inserting failed", ex);
                }
            }

            public static List<Fees> RetrieveAll(string usrName)
            {
                List<Fees> feeslist = new List<Fees>();
                try
                {
                    DataTable dt = FeesData.RetrieveAll();
                    DataTableReader r = dt.CreateDataReader();
                    while (r.Read())
                        feeslist.Add(convertReaderToObject(r));
                    r.Close();
                    dt.Dispose();
                }
                catch (Exception ex)
                {
                    Activity.Create(usrName, "Fees", "RetrieveAll", DateTime.Now, false, "All fields");
                    throw new Exception("RetrieveAll failed", ex);
                }
                Activity.Create(usrName, "Fees", "RetrieveAll", DateTime.Now, true, "All Fields");
                return feeslist;
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
                    Activity.Create(usrName, "Fees", "RetrieveById", DateTime.Now, true, id.ToString());
                    return result;
                }
                catch (Exception ex)
                {
                    Activity.Create(usrName, "Fees", "RetrieveById", DateTime.Now, false, id.ToString());
                    throw new Exception("RetrieveById failed", ex);
                }
            }

            public bool Update(string usrName)
            {
                try
                {
                    bool returnVal = FeesData.Update(Id, StudentId, Amount, Date,  ModifiedBy, ModifiedDate, IsDeleted);
                    Activity.Create(usrName, "Fees", "Update", DateTime.Now, true, Id.ToString());
                    return returnVal;
                }
                catch (Exception ex)
                {
                    Activity.Create(usrName, "Fees", "Update", DateTime.Now, false, Id.ToString());
                    throw new Exception("Update failed", ex);
                }
            }

            public static bool Delete(string usrName, int IdValue)
            {
                try
                {
                    bool returnVal = FeesData.Delete(IdValue,usrName);
                    Activity.Create(usrName, "Fees", "Delete", DateTime.Now, true, IdValue.ToString());
                    return returnVal;
                }
                catch (Exception ex)
                {
                    Activity.Create(usrName, "Fees", "Delete", DateTime.Now, false, IdValue.ToString());
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
                    r.ToDateTime("Date")
                     , r.ToString("CreatedBy")
                    , r.ToDateTime("CreatedDate")
                    , r.ToString("ModifiedBy")
                    , r.ToDateTime("ModifiedDate")
                    , r.ToBool("IsDeleted"));

            }
        } //Fees
    }

