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
        public class Category
        {
            #region Fields

            private int _id;
            private string _categoryName;
            private bool _isActive;
            private string _createdBy;
            private DateTime _createdDate;
            private string _modifiedBy;
            private DateTime _modifiedDate;
            private bool _isDeleted;

            #endregion

            #region Properties

            public int Id { get { return _id; } set { _id = value; } }
            public string CategoryName { get { return _categoryName; } set { _categoryName = value; } }
            public bool IsActive { get { return _isActive; } set { _isActive = value; } }
            public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
            public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
            public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
            public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
            public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }

            #endregion

            #region Constructor

            public Category()
            {
                _id = 0;
                _categoryName = "";
                _isActive = true;
                _createdBy = "";
                _createdDate = DateTime.Now;
                _modifiedBy = "";
                _modifiedDate = DateTime.Now;
                _isDeleted = false;
            }

            public Category(int id, string categoryName, bool isActive,
                            string createdBy, DateTime createdDate,
                            string modifiedBy, DateTime modifiedDate,
                            bool isDeleted)
            {
                _id = id;
                _categoryName = categoryName;
                _isActive = isActive;
                _createdBy = createdBy;
                _createdDate = createdDate;
                _modifiedBy = modifiedBy;
                _modifiedDate = modifiedDate;
                _isDeleted = isDeleted;
            }

            #endregion

            #region CRUD

            public static int Create(string usrName, string categoryName, bool isActive)
            {
                string createdBy = usrName;
                DateTime createdDate = DateTime.Now;
                string modifiedBy = usrName;
                DateTime modifiedDate = DateTime.Now;
                bool isDeleted = false;

                try
                {
                    int res = CategoryData.Create(categoryName,
                                                  isActive,
                                                  createdBy,
                                                  createdDate,
                                                  modifiedBy,
                                                  modifiedDate,
                                                  isDeleted);

                    Activity.Create(usrName, "Category", "Create",
                                    DateTime.Now, true,
                                    "CategoryName:" + categoryName +
                                    " - IsActive:" + isActive);

                    return res;
                }
                catch (Exception ex)
                {
                    Activity.Create(usrName, "Category", "Create",
                                    DateTime.Now, false,
                                    "CategoryName:" + categoryName);

                    return -1;
                }
            }

            public static List<Category> RetrieveAll(string usrName)
            {
                List<Category> list = new List<Category>();

                try
                {
                    DataTable dt = CategoryData.RetrieveAll();
                    DataTableReader r = dt.CreateDataReader();

                    while (r.Read())
                        list.Add(ConvertReaderToObject(r));

                    r.Close();
                    dt.Dispose();

                    Activity.Create(usrName, "Category", "RetrieveAll",
                                    DateTime.Now, true, "All Records");
                }
                catch (Exception)
                {
                    Activity.Create(usrName, "Category", "RetrieveAll",
                                    DateTime.Now, false, "All Records");
                }

                return list;
            }

            public static Category RetrieveById(string usrName, int id)
            {
                Category result = null;

                try
                {
                    DataTable dt = CategoryData.RetrieveById(id);
                    DataTableReader r = dt.CreateDataReader();

                    if (r.Read())
                        result = ConvertReaderToObject(r);

                    r.Close();
                    dt.Dispose();

                    Activity.Create(usrName, "Category", "RetrieveById",
                                    DateTime.Now, true, id.ToString());
                }
                catch (Exception)
                {
                    Activity.Create(usrName, "Category", "RetrieveById",
                                    DateTime.Now, false, id.ToString());
                }

                return result;
            }

            public bool Update(string usrName)
            {
                try
                {
                    bool returnVal = CategoryData.Update(Id,
                                                         CategoryName,
                                                         IsActive,
                                                         CreatedBy,
                                                         CreatedDate,
                                                         ModifiedBy,
                                                         ModifiedDate,
                                                         IsDeleted);

                    Activity.Create(usrName, "Category", "Update",
                                    DateTime.Now, true,
                                    "CategoryName:" + CategoryName);

                    return returnVal;
                }
                catch (Exception)
                {
                    Activity.Create(usrName, "Category", "Update",
                                    DateTime.Now, false,
                                    "CategoryName:" + CategoryName);
                    return false;
                }
            }

            public static bool Delete(string usrName, int id)
            {
                try
                {
                    bool returnVal = CategoryData.Delete(id);

                    Activity.Create(usrName, "Category", "Delete",
                                    DateTime.Now, true, id.ToString());

                    return returnVal;
                }
                catch (Exception)
                {
                    Activity.Create(usrName, "Category", "Delete",
                                    DateTime.Now, false, id.ToString());

                    return false;
                }
            }

            #endregion

            #region Convert Reader

            private static Category ConvertReaderToObject(DataTableReader r)
            {
                return new Category(
                    r.ToInt("Id"),
                    r.ToString("CategoryName"),
                    r.ToBool("IsActive"),
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


