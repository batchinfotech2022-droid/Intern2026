using BiSchool.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace BiSchool.BL
{
        public class Student
        {
        #region Fields

            private int _id;
            private string _fullname;
            private string _email;
            private string _password;
            private string _address;
            private string _phone;
            private bool _isAdmin;
            private string _createdby;
            private DateTime _createddate;
            private string _modifiedby;
            private DateTime _modifieddate;
            private bool _isdeleted;

            #endregion //Fields

            #region Props

            public int Id { get { return _id; } set { _id = value; } }

            public string FullName { get { return _fullname; } set { _fullname = value; } }

            public string Email { get { return _email; } set { _email = value; } }

            public string Password { get { return _password; } set { _password = value; } }

            public string Address { get { return _address; } set { _address = value; } }

            public string Phone { get { return _phone; } set { _phone = value; } }

            public bool IsAdmin { get { return _isAdmin; } set { _isAdmin = value; } }

            public string CreatedBy { get { return _createdby; } set { _createdby = value; } }

            public DateTime CreatedDate { get { return _createddate; } set { _createddate = value; } }

            public string ModifiedBy { get { return _modifiedby; } set { _modifiedby = value; } }

            public DateTime ModifiedDate { get { return _modifieddate; } set { _modifieddate = value; } }

            public bool IsDeleted { get { return _isdeleted; } set { _isdeleted = value; } }

            #endregion //Props

            #region CTOR

            public Student()
            {
                    _id = 0;
                    _fullname = string.Empty;
                    _email = string.Empty;
                _password = string.Empty;
                _address = string.Empty;
                _phone = string.Empty;
                _isAdmin = false;
                    _createdby = string.Empty;
                    _createddate = DateTime.Now;
                    _modifiedby = string.Empty;
                    _modifieddate = DateTime.Now;
                    _isdeleted = false;
            }

            public Student(int id, string fullname, string email, string password, string address, string phone, bool isAdmin,string createdby, DateTime createddate, string modifiedby, DateTime modifieddate, bool isdeleted)
            {
                _id = id;
                _fullname = fullname;
                _email = email;
                _password = password;
                _address = address;
                _phone = phone;
                _isAdmin = isAdmin;
                _createdby = createdby;
                _createddate = createddate;
                _modifiedby = modifiedby;
                _modifieddate = modifieddate;
                _isdeleted = isdeleted;
            }

            #endregion //CTOR

            #region CRUD

            public static int Create(string usrName, string fullname, string email, string password, string address, string phone, bool isAdmin)
            {
                string createdby = usrName;
                DateTime createddate = DateTime.Today;
                string modifiedby = usrName;
                DateTime modifieddate = DateTime.Today;
                bool isdeleted = false;

                try
                {
                    int res = StudentData.Create(fullname, email, password, address, phone, isAdmin, createdby, createddate, modifiedby, modifieddate, isdeleted);
                    Activity.Create(usrName, "Student", "Create", DateTime.Now, true, "FullName:" + fullname.ToString() + " - " + "Email:" + email.ToString() + " - " + "Password:" + password.ToString() + " - " + "Address:" + address.ToString() + " - " + "Phone:" + phone.ToString() + " - " + "IsAdmin:" + isAdmin.ToString() + " - "  + "Createdby:" + createdby.ToString() + " - " + "Createddate:" + createddate.ToString() + " - " + "Modifiedby:" + modifiedby.ToString() + " - " + "Modifieddate:" + modifieddate.ToString() + " - " + "Isdeleted:" + isdeleted.ToString());
                    return res;
                }
                catch (Exception ex)
                {
                Activity.Create(usrName, "Student", "Create", DateTime.Now, true, "FullName:" + fullname.ToString() + " - " + "Email:" + email.ToString() + " - " + "Password:" + password.ToString() + " - " + "Address:" + address.ToString() + " - " + "Phone:" + phone.ToString() + " - " + "IsAdmin:" + isAdmin.ToString() + " - " + "Createdby:" + createdby.ToString() + " - " + "Createddate:" + createddate.ToString() + " - " + "Modifiedby:" + modifiedby.ToString() + " - " + "Modifieddate:" + modifieddate.ToString() + " - " + "Isdeleted:" + isdeleted.ToString());
                throw ;
                }

            }
            public static List<Student> RetrieveAll(string usrName)
            {
                List<Student> studentlist = new List<Student>();
                try
                {
                    DataTable dt = StudentData.RetrieveAll();
                    DataTableReader r = dt.CreateDataReader();
                    while (r.Read())
                        studentlist.Add(convertReaderToObject(r));
                    r.Close();
                    dt.Dispose();
                }
                catch (Exception ex)
                {
                    Activity.Create(usrName, "Student", "RetrieveAll", DateTime.Now, false, "All fields");
                    throw ;
                }

                Activity.Create(usrName, "Student", "RetrieveAll", DateTime.Now, true, "All Fields");
                return studentlist;
            }

            public static Student RetrieveById(string usrName, int id)
            {
                Student result = null;
                try
                {
                    DataTable dt = StudentData.RetrieveById(id);
                    DataTableReader r = dt.CreateDataReader();
                    if (r.Read())
                        result = convertReaderToObject(r);
                    r.Close();
                    dt.Dispose();
                    Activity.Create(usrName, "Student", "RetrieveById", DateTime.Now, true, id.ToString());
                    return result;
                }
                catch (Exception ex)
                {
                    Activity.Create(usrName, "Student", "RetrieveById", DateTime.Now, false, id.ToString());
                    throw;
                }

            }
            public bool Update(string usrName)
            {
                try
                {
                    bool returnVal = StudentData.Update(Id, FullName, Email,Password,Address,Phone,IsAdmin, ModifiedBy, ModifiedDate, IsDeleted);
                Activity.Create(usrName, "Student", "Update", DateTime.Now, true, "FullName:" + FullName.ToString() + " - " + "Email:" + Email.ToString() + " - " + "Password:" + Password.ToString() + " - " + "Address:" + Address.ToString() + " - " + "Phone:" + Phone.ToString() + " - " + "IsAdmin:" + IsAdmin.ToString() + " - " + "Createdby:" + CreatedBy.ToString() + " - " + "Createddate:" + CreatedDate.ToString() + " - " + "Modifiedby:" + ModifiedBy.ToString() + " - " + "Modifieddate:" + ModifiedDate.ToString() + " - " + "Isdeleted:" + IsDeleted.ToString());
                return returnVal;
                }
                catch (Exception ex)
                {
                Activity.Create(usrName, "Student", "Update", DateTime.Now, false, "FullName:" + FullName.ToString() + " - " + "Email:" + Email.ToString() + " - " + "Password:" + Password.ToString() + " - " + "Address:" + Address.ToString() + " - " + "Phone:" + Phone.ToString() + " - " + "IsAdmin:" + IsAdmin.ToString() + " - " + "Createdby:" + CreatedBy.ToString() + " - " + "Createddate:" + CreatedDate.ToString() + " - " + "Modifiedby:" + ModifiedBy.ToString() + " - " + "Modifieddate:" + ModifiedDate.ToString() + " - " + "Isdeleted:" + IsDeleted.ToString());
                throw ;
                }

            }

            public static bool Delete(string usrName, int idValue)
            {
                try
                {
                    bool returnVal = StudentData.Delete(idValue,usrName);
                    Activity.Create(usrName, "Student", "Delete", DateTime.Now, true, idValue.ToString());
                    return returnVal;
                }
                catch (Exception ex)
                {
                    Activity.Create(usrName, "Student", "Delete", DateTime.Now, false, idValue.ToString());
                    throw ;
                }

            }

            public bool Delete(string usrName)
            {
                try
                {
                    bool returnVal = StudentData.Delete(this.Id,usrName);
                    Activity.Create(usrName, "Student", "Delete", DateTime.Now, true, this.Id.ToString());
                    return returnVal;
                }
                catch (Exception ex)
                {
                    Activity.Create(usrName, "Student", "Delete", DateTime.Now, false, this.Id.ToString());
                    throw ;
                }

            }

            #endregion //CRUD

            private static Student convertReaderToObject(DataTableReader r)
            {
                return new Student(r.ToInt("Id")
                    , r.ToString("FullName")
                    , r.ToString("Email")
                    , r.ToString("Password")
                    , r.ToString("Address")
                    , r.ToString("Phone")
                    , r.ToBool("IsAdmin")
                    , r.ToString("CreatedBy")
                    , r.ToDateTime("CreatedDate")
                    , r.ToString("ModifiedBy")
                    , r.ToDateTime("ModifiedDate")
                    , r.ToBool("IsDeleted"));
            }

        } //BankAccount
    }

