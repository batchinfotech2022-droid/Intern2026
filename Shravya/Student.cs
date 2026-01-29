using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharp_console_app
{
    public partial class Student
    {

        public int Id;
        public string Name;
        public decimal Marks;

        public static string CollegeName;

        public void displayInfo()
        {
            Console.WriteLine("id: " + Id);
            Console.WriteLine("Name is: " + Name);
            Console.WriteLine("Mark is " + Marks);

        }
        public Student()
        {
            Id = 0;
            Name = "Not assigned";
            Marks = 90;
        }
        public Student(int id, string name, decimal marks)
        {
            this.Id = id;
            this.Name = name;
            this.Marks = marks;
        }

        public void displayInfo1()
        {
            Console.WriteLine("id: " + Id);
            Console.WriteLine("Name is: " + Name);
            Console.WriteLine("College is " + CollegeName);

        }
        public static bool IsCollegeValid()
        {
            return !string.IsNullOrEmpty(CollegeName);
        }
    }
    public partial class Student
    {
        public static void Multiply(int x, int y)
        {
            int result = x * y;
            Console.WriteLine("Multiplication: " + result);
        }

    }

}

