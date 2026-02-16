using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using SmartCMApp.DL;


namespace SmartCMApp.BL
{
        public class Contact
        {
            #region Fields

            private int _id;
            private string _fullName;
            private string _email;
            private string _phone;
            private string _city;
            private int _categoryId;
            private string _createdBy;
            private DateTime _createdDate;
            private string _modifiedBy;
            private DateTime _modifiedDate;
            private bool _isDeleted;

            #endregion

            #region Properties

            public int Id { get { return _id; } set { _id = value; } }
            public string FullName { get { return _fullName; } set { _fullName = value; } }
            public string Email { get { return _email; } set { _email = value; } }
            public string Phone { get { return _phone; } set { _phone = value; } }
            public string City { get { return _city; } set { _city = value; } }
            public int CategoryId { get { return _categoryId; } set { _categoryId = value; } }
            public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
            public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
            public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
            public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
            public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }

            #endregion

            #region Constructor

            public Contact()
            {
                _id = 0;
                _fullName = "";
                _email = "";
                _phone = "";
                _city = "";
                _categoryId = 0;
                _createdBy = "";
                _createdDate = DateTime.Now;
                _modifiedBy = "";
                _modifiedDate = DateTime.Now;
                _isDeleted = false;
            }

            public Contact(int id, string fullName, string email,
                           string phone, string city, int categoryId,
                           string createdBy, DateTime createdDate,
                           string modifiedBy, DateTime modifiedDate,
                           bool isDeleted)
            {
                _id = id;
                _fullName = fullName;
                _email = email;
                _phone = phone;
                _city = city;
                _categoryId = categoryId;
                _createdBy = createdBy;
                _createdDate = createdDate;
                _modifiedBy = modifiedBy;
                _modifiedDate = modifiedDate;
                _isDeleted = isDeleted;
            }

        


        #endregion

        #region CRUD

        public static int Create(string usrName,
                                     string fullName,
                                     string email,
                                     string phone,
                                     string city,
                                     int categoryId)
            {
                string createdBy = usrName;
                DateTime createdDate = DateTime.Now;
                string modifiedBy = usrName;
                DateTime modifiedDate = DateTime.Now;
                bool isDeleted = false;

                try
                {
                    int res = ContactData.Create(fullName,
                                                 email,
                                                 phone,
                                                 city,
                                                 categoryId,
                                                 createdBy,
                                                 createdDate,
                                                 modifiedBy,
                                                 modifiedDate,
                                                 isDeleted);

                    Activity.Create(usrName, "Contact", "Create",
                                    DateTime.Now, true,
                                    "FullName:" + fullName +
                                    " - Email:" + email);

                    return res;
                }
                catch (Exception)
                {
                    Activity.Create(usrName, "Contact", "Create",
                                    DateTime.Now, false,
                                    "FullName:" + fullName);

                    return -1;
                }
            }

            public static List<Contact> RetrieveAll(string usrName)
            {
                List<Contact> list = new List<Contact>();

                try
                {
                    DataTable dt = ContactData.RetrieveAll();
                    DataTableReader r = dt.CreateDataReader();

                    while (r.Read())
                        list.Add(ConvertReaderToObject(r));

                    r.Close();
                    dt.Dispose();

                    Activity.Create(usrName, "Contact", "RetrieveAll",
                                    DateTime.Now, true, "All Records");
                }
                catch (Exception)
                {
                    Activity.Create(usrName, "Contact", "RetrieveAll",
                                    DateTime.Now, false, "All Records");
                }

                return list;
            }

            public static Contact RetrieveById(string usrName, int id)
            {
                Contact result = null;

                try
                {
                    DataTable dt = ContactData.RetrieveById(id);
                    DataTableReader r = dt.CreateDataReader();

                    if (r.Read())
                        result = ConvertReaderToObject(r);

                    r.Close();
                    dt.Dispose();

                    Activity.Create(usrName, "Contact", "RetrieveById",
                                    DateTime.Now, true, id.ToString());
                }
                catch (Exception)
                {
                    Activity.Create(usrName, "Contact", "RetrieveById",
                                    DateTime.Now, false, id.ToString());
                }

                return result;
            }

            public bool Update(string usrName)
            {
                try
                {
                    bool returnVal = ContactData.Update(Id,
                                                        FullName,
                                                        Email,
                                                        Phone,
                                                        City,
                                                        CategoryId,
                                                        CreatedBy,
                                                        CreatedDate,
                                                        ModifiedBy,
                                                        ModifiedDate,
                                                        IsDeleted);

                    Activity.Create(usrName, "Contact", "Update",
                                    DateTime.Now, true,
                                    "FullName:" + FullName);

                    return returnVal;
                }
                catch (Exception)
                {
                    Activity.Create(usrName, "Contact", "Update",
                                    DateTime.Now, false,
                                    "FullName:" + FullName);

                    return false;
                }
            }

            public static bool Delete(string usrName, int id)
            {
                try
                {
                    bool returnVal = ContactData.Delete(id);

                    Activity.Create(usrName, "Contact", "Delete",
                                    DateTime.Now, true, id.ToString());

                    return returnVal;
                }
                catch (Exception)
                {
                    Activity.Create(usrName, "Contact", "Delete",
                                    DateTime.Now, false, id.ToString());

                    return false;
                }
            }

            #endregion

            #region Convert Reader

            private static Contact ConvertReaderToObject(DataTableReader r)
            {
                return new Contact(
                    r.ToInt("Id"),
                    r.ToString("FullName"),
                    r.ToString("Email"),
                    r.ToString("Phone"),
                    r.ToString("City"),
                    r.ToInt("CategoryId"),
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


