using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CsharpConsoleChApp
{
    public  partial class student
    {
        public int Id;
        public string Name;
        public decimal marks;

        public void Displayinfo()
        {
            Console.WriteLine("Id" + Id);
            Console.WriteLine("Name" + Name);
            Console.WriteLine("Marks" + marks);

        }
        public student()
        {
            Id = 0;
            Name = "Not Assigned";
        }
        public student(int id, string name)
        {
            Id = id;
            Name = name;
        }
        public static string CollegeName;
        public static bool IsCollegeValid()
        {
            return !string.IsNullOrEmpty(CollegeName);
        }
    }
    public partial class student
    {

    }
}

