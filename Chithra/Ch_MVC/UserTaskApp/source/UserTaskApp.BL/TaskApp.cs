using System;
using System.Collections.Generic;
using System.Data;
using UserTaskApp.DL;

namespace UserTaskApp.BL
{
    public class TaskApp
    {
        private int _id;
        private string _title;
        private string _description;
        private string _assignedTo;
        private string _status;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        #region Properties

        public int Id { get { return _id; } set { _id = value; } }
        public string Title { get { return _title; } set { _title = value; } }
        public string Description { get { return _description; } set { _description = value; } }
        public string AssignedTo { get { return _assignedTo; } set { _assignedTo = value; } }
        public string Status { get { return _status; } set { _status = value; } }
        public string CreatedBy { get { return _createdBy; } set { _createdBy = value; } }
        public DateTime CreatedDate { get { return _createdDate; } set { _createdDate = value; } }
        public string ModifiedBy { get { return _modifiedBy; } set { _modifiedBy = value; } }
        public DateTime ModifiedDate { get { return _modifiedDate; } set { _modifiedDate = value; } }
        public bool IsDeleted { get { return _isDeleted; } set { _isDeleted = value; } }

        #endregion

        #region Constructors

        public TaskApp()
        {
            _id = 0;
            _title = string.Empty;
            _description = string.Empty;
            _assignedTo = string.Empty;
            _status = string.Empty;
            _createdBy = string.Empty;
            _createdDate = DateTime.Now;
            _modifiedBy = string.Empty;
            _modifiedDate = DateTime.Now;
            _isDeleted = false;
        }

        public TaskApp(int id, string title, string description, string assignedTo,
                    string status, string createdBy, DateTime createdDate,
                    string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            _id = id;
            _title = title;
            _description = description;
            _assignedTo = assignedTo;
            _status = status;
            _createdBy = createdBy;
            _createdDate = createdDate;
            _modifiedBy = modifiedBy;
            _modifiedDate = modifiedDate;
            _isDeleted = isDeleted;
        }

        #endregion

        #region CRUD

        public static int Create(string usrName, string title, string description,
                                 string assignedTo, string status)
        {
            string createdBy = usrName;
            DateTime createdDate = DateTime.Today;
            string modifiedBy = usrName;
            DateTime modifiedDate = DateTime.Today;
            bool isDeleted = false;

            try
            {
                int res = TaskData.Create(
                    title,
                    description,
                    assignedTo,
                    status,
                    createdBy,
                    createdDate,
                    modifiedBy,
                    modifiedDate,
                    isDeleted);

                Activity.Create(usrName, "Task", "Create", DateTime.Now, true, title);
                return res;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Task", "Create", DateTime.Now, false, title);
                throw new Exception("Inserting failed", ex);
            }
        }

        public static List<TaskApp> RetrieveAll(string usrName)
        {
            List<TaskApp> res = new List<TaskApp>();

            try
            {
                DataTable dt = TaskData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    res.Add(convertReaderToObject(r));

                r.Close();
                dt.Dispose();
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Task", "RetrieveAll", DateTime.Now, false, "All");
                throw new Exception("RetrieveAll failed", ex);
            }

            Activity.Create(usrName, "Task", "RetrieveAll", DateTime.Now, true, "All");
            return res;
        }

        public static TaskApp RetrieveById(string usrName, int id)
        {
            TaskApp result = null;

            try
            {
                DataTable dt = TaskData.RetrieveById(id);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = convertReaderToObject(r);

                r.Close();
                dt.Dispose();

                Activity.Create(usrName, "Task", "RetrieveById", DateTime.Now, true, id.ToString());
                return result;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Task", "RetrieveById", DateTime.Now, false, id.ToString());
                throw new Exception("RetrieveById failed", ex);
            }
        }

        public bool Update(string usrName)
        {
            try
            {
                bool returnVal = TaskData.Update(Id, Title, Description, AssignedTo,
                                                Status, CreatedBy, CreatedDate,
                                                ModifiedBy, ModifiedDate, IsDeleted);

                Activity.Create(usrName, "Task", "Update", DateTime.Now, true, Title);
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Task", "Update", DateTime.Now, false, Title);
                throw new Exception("Update failed", ex);
            }
        }

        public static bool Delete(string usrName, int idValue)
        {
            try
            {
                bool returnVal = TaskData.Delete(usrName,idValue);
                Activity.Create(usrName, "Task", "Delete", DateTime.Now, true, idValue.ToString());
                return returnVal;
            }
            catch (Exception ex)
            {
                Activity.Create(usrName, "Task", "Delete", DateTime.Now, false, idValue.ToString());
                throw new Exception("Delete failed", ex);
            }
        }

        #endregion

        #region Helper

        private static TaskApp convertReaderToObject(DataTableReader r)
        {
            return new TaskApp(
                r.ToInt("Id"),
                r.ToString("Title"),
                r.ToString("Description"),
                r.ToString("AssignedTo"),
                r.ToString("Status"),
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
