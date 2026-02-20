using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Intern_MVC.Models
{
    public class Employee
    {
        private int _id;
        private string _name;
        private string _email;
        private string _phone;
        private string _address;
     
        public int Id 
        { 
            get { return _id; }
            set { _id = value; } 
        }
        public string Name
        { 
            get { return _name;} 
            set { _name = value; }
        }
        public string Email 
        { 
            get { return _email;} 
            set { _email = value; }
        }
        public string Phone
        {
            get { return _phone; }
            set { _phone = value; }
        }
        public string Address
        {
            get { return _address;}
            set { _address = value; }
        }


                             
                    
    }
}