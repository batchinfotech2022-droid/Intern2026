using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Interns_mvc.ViewModels
{
    public class Student
    {
        private int _id;
        private string _name;
        private string _section;
        private string _email;
        private int _marks;

        public int Id {
            get { return _id; }
            set { _id = value; } }

        public string Name {
            get { return _name; }
            set { _name = value; } }

        public string Section {
            get { return _section; }

            set { _section = value; } }

        public string Email { 
            get { return _email; } 
            
           set { _email = value; } }

        public int Marks { 
            get { return _marks; } 
            set { _marks = value; } }

        public Student()
        {
            _id = 0;
            _name = "undefined";
            _section = "undefined";
            _email = "undefined";
            _marks = 0;
        }

        public Student(int id,string name,string section,string email, int marks)
        {
            _id = id;
            _name = name;
            _section = section;
            _email = email;
            _marks = marks;
        }


    }
}