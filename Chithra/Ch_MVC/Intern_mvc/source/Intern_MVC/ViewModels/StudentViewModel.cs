using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Intern_MVC.ViewModels
{
    public class StudentViewModel
    {
        private int _id;
        private string _name;
        private string _section;
        private double _marks;


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

        public string Section
        { get
            { return _section; }
            set { _section = value; }
        }
        public string Marks
        {
            get
            { return Marks; }
            set { _section = value; }
        }

        public StudentViewModel() {
          
            _name = "undefined";
            _section = "undefined";
            _marks = 0;
                
        }
    public StudentViewModel(int id,string name,string section,double marks )
        {
            _id = id;
            _name = name;
            _section = section;
            _marks = marks;

        }

    }
}