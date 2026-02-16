using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using UserTaskApp.BL;
using UserTaskApp.DL;
namespace UserTaskApp.BL
{
    public class User
    {
        private int _id;
        private string _name; 
        private string _role; 
        private string _createdBy; 
        private DateTime _createdDate; 
        private string _modifiedBy; 
        private DateTime _modifiedDate; 
        
        private bool _isDeleted; 
        public int Id { get { return _id; } set { _id = value; } }
        public string Name { get { return _name; } set { _name = value; } }
        public string Role { get { return _role; } set { _role = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }
        public User()
        {
            _id = 0; 
            _name = string.Empty; 
            _role = string.Empty; 
            _createdBy = string.Empty; 
            _createdDate = DateTime.Now; 
            _modifiedBy = string.Empty; 
            _modifiedDate = DateTime.Now; 
            _isDeleted = false; }
        public User(int id, string name, string role, string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted) 
        { 
            _id = id;
            _name = name;
            _role = role; 
            _createdBy = string.Empty; 
            _createdDate = DateTime.Now; 
            _modifiedBy = string.Empty; 
            _modifiedDate = DateTime.Now;
            _isDeleted = false; }
        public static int Create(string usrName, string name, string role) 
        {
            string CreatedBy = usrName;
            DateTime CreatedDate = DateTime.Today;
            string ModifiedBy = usrName;
            DateTime ModifiedDate = DateTime.Today;
            bool IsDeleted = false;
            try {
                int res = UserData.Create(name, role, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted); 
                Activity.Create(usrName, "User", "Create", DateTime.Now, true, "Name:" + name.ToString() + " - " + "Role:" + role.ToString() + " - " + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString()); 
                return res; 
            }
            catch (Exception ex) 
            { 
                Activity.Create(usrName, "User", "Create", DateTime.Now, false, "Name:" + name.ToString() + " - " + "Role:" + role.ToString() + " - " + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString()); 
                throw new Exception("Inserting failed", ex); 
            } 
        }
        public static List<User> RetrieveAll(string usrName) 
        { 
            List<User> res = new List<User>(); 
            try { 
                DataTable dt = UserData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();
                    while (r.Read()) res.Add(convertReaderToObject(r)); 
                r.Close(); dt.Dispose(); 
            } 
            catch (Exception ex) 
            { 
                Activity.Create(usrName, "User", "RetrieveAll", DateTime.Now, false, "All fields"); 
                throw new Exception("RetrieveAll failed", ex);
            } 
            Activity.Create(usrName, "User", "RetrieveAll", DateTime.Now, true, "All Fields"); 
            return res;
        }
        public static User RetrieveById(string usrName, int id) 
        {
            User result = null; 
            try
            { 
                DataTable dt = UserData.RetrieveById(id); DataTableReader r = dt.CreateDataReader(); if (r.Read()) result = convertReaderToObject(r); r.Close(); dt.Dispose(); Activity.Create(usrName, "User", "RetrieveById", DateTime.Now, true, id.ToString()); return result; } catch (Exception ex) { Activity.Create(usrName, "User", "RetrieveById", DateTime.Now, false, id.ToString()); throw new Exception("RetrieveById failed", ex); } }
        public bool Update(string usrName) 
        {
            try
            {
                bool returnVal = UserData.Update(Id, Name, Role, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted); Activity.Create(usrName, "User", "Update", DateTime.Now, true, "Name:" + Name.ToString() + " - " + "Role:" + Role.ToString() + "-" + "Createdby:" + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString()); 
                return returnVal; 
            } 
            catch (Exception ex) 
            {
                Activity.Create(usrName, "User", "Update", DateTime.Now, false, "Name:" + Name.ToString() + " - " + "Role:" + Role.ToString() + "-" + "CreatedBy:" + CreatedBy.ToString() + " - " + "CreatedDate:" + CreatedDate.ToString() + " - " + "ModifiedBy:" + ModifiedBy.ToString() + " - " + "ModifiedDate:" + ModifiedDate.ToString() + " - " + "IsDeleted:" + IsDeleted.ToString()); 
                throw new Exception("Update failed", ex);
            }
        }
        public static bool Delete(string usrName, int idValue) 
        {
            try 
            { 
                bool returnVal = UserData.Delete(idValue); Activity.Create(usrName, "User", "Delete", DateTime.Now, true, idValue.ToString()); 
                return returnVal; 
            } 
            catch (Exception ex) 
            { 
                Activity.Create(usrName, "User", "Delete", DateTime.Now, false, idValue.ToString()); 
                throw new Exception("Delete failed", ex); 
            }
        }
        public bool Delete(string usrName) 
        {
            try { bool returnVal = UserData.Delete(this.Id); Activity.Create(usrName, "User", "Delete", DateTime.Now, true, this.Id.ToString()); return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "User", "Delete", DateTime.Now, false, this.Id.ToString()); 
                throw new Exception("Delete failed", ex); } }
        private static User convertReaderToObject(DataTableReader r)
        {
            return new User(r.ToInt("Id"), 
            r.ToString("Name"),
            r.ToString("Role"),
            r.ToString("CreatedBy"),
            r.ToDateTime("CreatedDate"),
            r.ToString("Modifiedby"),
            r.ToDateTime("ModifiedDate"), 
            r.ToBool("IsDeleted"));
        }
    }
}