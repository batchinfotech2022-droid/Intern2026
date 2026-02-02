using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SqlServer.Server;

namespace CSharp_console_app
{
    internal class Category
    {
        public int _id;
        public string _name;
        public string _description;
        public bool _isActive;
        public string _createdBy;
        public DateTime _createdDate;
        public string _updatedBy;
        public DateTime _updatedDate;
        public bool _isDeleted;


        public Category()
        {
            _id = 0;
            _name = String.Empty;
            _description = String.Empty;
            _isActive = false;
            _createdBy = String.Empty;
            _createdDate = DateTime.Now;
            _updatedBy = String.Empty;
            _updatedDate = DateTime.Now;
            _isDeleted = false;
        }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public string Name
        {
            get { return _name; }
            set { _name = value; }

        }

        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }

        public bool IsActive
        {
            get { return _isActive; }
            set { _isActive = value; }
        }

        public string CreatedBy
        {
            get { return _createdBy; }
            set { _createdBy = value; }
        }

        public DateTime CreatedDate
        {
            get { return _createdDate; }
            set { _createdDate = value; }
        }

        public string UpdatedBy
        {
            get { return _updatedBy; }
            set { _updatedBy = value; }
        }

        public DateTime UpdatedDate
        {
            get { return _updatedDate; }
        }

        public bool IsDeleted
        {
            get { return _isDeleted; }
            set { _isDeleted = value; }
        }

        public Category(int id, string name, string description, bool isActive, string createdBy, DateTime createdDate, string updatedBy, DateTime updatedDate, bool isDeleted)
        {
            _id = id;
            _name = name;
            _description = description;
            _isActive = isActive;
            _createdBy = createdBy;
            _createdDate = createdDate;
            _updatedBy = updatedBy;
            _updatedDate = updatedDate;
            _isDeleted = isDeleted;
           
        }
    }
}
