using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Intern_MVC.Models
{
    public class TaskMaster
    {
        private int _id;
        private string _title;
        private string _description;
        private DateTime _created;
        private DateTime _updated;
        private string _status;

        public int Id { get { return _id; } set { _id = value; } }
        public string Title { get { return _title; } set { _title = value; } }
        public string Description { get { return _description; } set { _description = value; } }
        public DateTime Created { get { return _created; } set { _created = value; } }
        public DateTime Updated { get { return _updated; } set { _updated = value; } }
        public string Status { get { return _status; } set { _status = value; } }




       
    }
}