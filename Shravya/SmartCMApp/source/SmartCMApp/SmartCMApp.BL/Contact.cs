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
        private string _userName;
        private string _phone;
            private string _city;
            private int _categoryId;
        private string _password;
        private string _role;
        private bool _isActive;
        private bool _isLogged;
        private int _noOfAttempts;
        private string _createdBy;
            private DateTime _createdDate;
            private string _modifiedBy;
            private DateTime _modifiedDate;
            private bool _isDeleted;
       
        
       

        #endregion

        #region Properties

        public int Id { get { return _id; } set { _id = value; } }
            public string FullName { get { return _fullName; } set { _fullName = value; } }
        public string UserName { get { return _userName; } set { _userName = value; } }
        public string Phone { get { return _phone; } set { _phone = value; } }
            public string City { get { return _city; } set { _city = value; } }
            public int CategoryId { get { return _categoryId; } set { _categoryId = value; } }
        public string PassWord { get { return _password; } set { _password = value; } }
        public string Role { get { return _role; } set { _role = value; } }
        public bool IsActive { get { return _isActive; } set { _isActive = value; } }
        public bool IsLogged { get { return _isLogged; } set { _isLogged = value; } }
        public int NoOfAttempts { get { return _noOfAttempts; } set { _noOfAttempts = value; } }
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
            _userName = "";
            _phone = "";
                _city = "";
                _categoryId = 0;
            _password = "";
            _role = "";
            _isActive = false;
            _isLogged = false;
            _noOfAttempts = 0;
            _createdBy = "";
                _createdDate = DateTime.Now;
                _modifiedBy = "";
                _modifiedDate = DateTime.Now;
                _isDeleted = false;

            }

            public Contact(int id, string fullName, string userName,
                           string phone, string city, int categoryId,
                           string password, string role, bool isActive,
                           bool isLogged, int noOfAttempts,
                           string createdBy, DateTime createdDate,
                           string modifiedBy, DateTime modifiedDate,
                           bool isDeleted)
            {
                _id = id;
                _fullName = fullName;
            _userName = userName;
            _phone = phone;
                _city = city;
                _categoryId = categoryId;
            _password = password;
            _role = role;
            _isActive = isActive;
            _isLogged = isLogged;
            _noOfAttempts = noOfAttempts;
            _createdBy = createdBy;
                _createdDate = createdDate;
                _modifiedBy = modifiedBy;
                _modifiedDate = modifiedDate;
                _isDeleted = isDeleted;
            
            }




        #endregion

        #region CRUD

        public static int Create(string fullName,
                          string phone,
                          string city,
                          int categoryId,
                          string userName,
                          string password,
                          string role)
        {
            string createdBy = userName;
            DateTime createdDate = DateTime.Now;
            string modifiedBy = userName;
            DateTime modifiedDate = DateTime.Now;
            bool isDeleted = false;
            bool isActive = true;     
            bool isLogged = false;
            int noOfAttempts = 0;

            try
            {
                int res = ContactData.Create(fullName,
                                             userName,
                                             phone,
                                             city,
                                             categoryId,
                                             password,
                                             role,
                                             isActive,
                                             isLogged,
                                             noOfAttempts,
                                             createdBy,
                                             createdDate,
                                             modifiedBy,
                                             modifiedDate,
                                             isDeleted);

                Activity.Create(userName, "Contact", "Create",
                                DateTime.Now, true,
                                "FullName:" + fullName +
                                " UserName:" + userName);

                return res;
            }
            catch (Exception)
            {
                Activity.Create(userName, "Contact", "Create",
                                DateTime.Now, false,
                                "FullName:" + fullName);

                return -1;
            }
        }

        public static List<Contact> RetrieveAll(string userName)
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

                Activity.Create(userName, "Contact", "RetrieveAll",
                                DateTime.Now, true, "All Records");
            }
            catch (Exception)
            {
                Activity.Create(userName, "Contact", "RetrieveAll",
                                DateTime.Now, false, "All Records");
            }

            return list;
        }

        public static Contact RetrieveById(string userName, int id)
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

                Activity.Create(userName, "Contact", "RetrieveById",
                                DateTime.Now, true, id.ToString());
            }
            catch (Exception)
            {
                Activity.Create(userName, "Contact", "RetrieveById",
                                DateTime.Now, false, id.ToString());
            }

            return result;
        }

        public bool Update(string userName)
        {
            try
            {
                bool result = ContactData.Update(
                    Id,
                    FullName,
                    UserName,
                    Phone,
                    City,
                    CategoryId,
                    PassWord,
                    Role,
                    IsActive,
                    IsLogged,
                    NoOfAttempts,
                    userName,
                    DateTime.Now);

                Activity.Create(userName, "Contact", "Update",
                                DateTime.Now, true,
                                "Id:" + Id);

                return result;
            }
            catch (Exception)
            {
                Activity.Create(userName, "Contact", "Update",
                                DateTime.Now, false,
                                "Id:" + Id);

                return false;
            }
        }

        public static bool Delete(string userName, int id)
        {
            try
            {
                bool result = ContactData.Delete(id, userName);

                Activity.Create(userName, "Contact", "Delete",
                                DateTime.Now, true,
                                "Id:" + id);

                return result;
            }
            catch (Exception)
            {
                Activity.Create(userName, "Contact", "Delete",
                                DateTime.Now, false,
                                "Id:" + id);

                return false;
            }
        }

        public static Contact RetrieveByUserName(string userName)
        {
            Contact result = null;

            try
            {
                DataTable dt = ContactData.RetrieveByUserName(userName);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                {
                    result = ConvertReaderToObject(r);
                }

                r.Close();
                dt.Dispose();
            }
            catch (Exception)
            {
                return null;
            }

            return result;
        }



        public static Boolean Authenticate(string UserName, string PassWord)
        {
            if (PassWord.Trim() == "")
            {
                return false;
            }
            bool bVal = false;
            try
            {

                Contact user = Contact.RetrieveByUserName(UserName);
                if (user != null)
                {
                    if (PasswordHash.VerifyPassword(PassWord, user.PassWord))
                    {
                        bVal = true;
                    }
                    else
                    {
                        if (PasswordHash.isHashedPassword(PassWord))
                        {
                            bVal = false;
                        }
                        else if (PassWord == user.PassWord)
                        {
                            bVal = true;
                            user.PassWord = PasswordHash.GenerateHash(PassWord);
                            user.Update(user.UserName);
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                throw;
            }

            return bVal;
        }
        #endregion

        #region Convert Reader

        private static Contact ConvertReaderToObject(DataTableReader r)
        {
            return new Contact(
                r.ToInt("Id"),
                r.ToString("FullName"),
                r.ToString("UserName"),
                r.ToString("Phone"),
                r.ToString("City"),
                r.ToInt("CategoryId"),
                r.ToString("PassWord"),
                r.ToString("Role"),
                r.ToBool("IsActive"),
                r.ToBool("IsLogged"),
                r.ToInt("NoOfAttempts"),
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


