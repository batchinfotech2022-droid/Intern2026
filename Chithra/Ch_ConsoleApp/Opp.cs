using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CsharpConsoleChApp
{
    public class Person
    {
        private int _id;
        private string _name;
        private int _age;
        protected string message = "parent";
        public Person()
        {
            Console.WriteLine("default Constructor");
        }
        public int Age
        {
            get { return _age; }
            set
            {
                if (value > 0)
                    _age = value;

            }
        }
        public string Name
        {
            get { return _name; }

        }
        public int Id
        {
            set
            {
                if (value > 0)
                    _id = value;

            }
        }
        public Person(int Id, string Name, int Age)
        {
            _id = Id;
            _name = Name;
            _age = Age;
        }

    }
    public class Person2 : Person
    {

    }

    }
