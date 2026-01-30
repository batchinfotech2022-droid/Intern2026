using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Channels;
using System.Text;
using System.Threading.Tasks;

namespace CsharpConsoleChApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*Console.WriteLine("Hello World!!");
            int id = 101;
            Console.WriteLine("ID: " + id);
            int age = 21;
            Console.WriteLine("Age: " + age);
            string name = "Chithra";
            Console.WriteLine("Name:" + name);
            var department = "IT";
            Console.WriteLine("Departmnet:" + department);
            DateTime joiningDate = DateTime.Now;
            Console.WriteLine("Joining Date" + joiningDate);
            Add(10, 10);
            Subtract(y: 10, x: 5);
            Multiply(3, 5);
            int additionresult = Add(20, 30);
            Console.WriteLine("AdditionResult:" + additionresult);
            string name1 = test(6);
            Console.WriteLine("name:" + name1);
            implicitCasting(5);
             explicitCasting(5.33);



             compare(2.4167, 21, 10.54444);

            count(10);
            nm();
            Stringhandling();
            TryCatch();*/
            student student1 = new student(7, "Channel");
            //student1.Id = 1;
            //student1.Name = "Chithra";
            student1.marks = 9.9m;
            student1.Displayinfo();
            student.CollegeName = "Mite";
            bool res = student.IsCollegeValid();
            Console.WriteLine(student.CollegeName + " " + res);


            Console.ReadLine();
        }
        public static int Add(int x, int y)
        {
            int result = x + y;
            //Console.WriteLine("Addition:" + result);

            return result;
        }
        public static int Add(int x, int y, bool z)
        {
            int result = x + y;
            //Console.WriteLine("Addition:" + result);

            return result;
        }

        private static void Subtract(int x, int y)
        {
            int result = x - y;
            Console.WriteLine("s:" + result);

        }
        static void Multiply(int x, int y)
        {
            int result = x * y;
            Console.WriteLine("Multiply:" + result);
        }
        static double implicitCasting(int x)
        {
            double result = x;
            return result;
        }
        static int explicitCasting(double x)
        {
            int result = Convert.ToInt32(x);
            return result;
        }
        /*static void compare(float internid, int age, double salary)
        {

            int result1 = (int)internid;
            Console.WriteLine("internid:" + result1);
            Console.WriteLine("Age:" + age);
            int result1 = (int)salary;
            Console.WriteLine("internid:" + result1);

        }*/

        static string test(int age)
        {
            if (age > 10)
            {
                return "number greater than 10";
            }
            else if (age < 10)
            {
                return "number is less than 10";
            }

            else
            {
                return "number is equal to 10";
            }
        }
        static int count(int studentcount)
        {
            int presentcount = 0;
            for (int i = 1; i <= studentcount; i++)
            {
                presentcount++;
                if (i == 4)
                {
                    Console.WriteLine("roll" + i + "is skipped");
                    continue;
                }
                Console.WriteLine("present" + i);

                if (i == 8)
                {
                    Console.WriteLine("breakpoint" + i);
                    break;
                }
            }
            return presentcount;
        }
        static void nm()
        {
            List<int> numbers = new List<int>();
            for (int i = 1; i <= 10; i++)
            {
                numbers.Add(i);
                Console.WriteLine(i);
            }
            /*foreach (int num in numbers)
            {
                if(num == 5)
                {
                    numbers.Remove(num);
                }
                Console.WriteLine(num);
            }*/
        }
        static void Stringhandling()
        {
            string test = "  Chithra2 32hvsahu ydgxvh qWTRD  ";
            Console.WriteLine(test.Trim().Length);
        }
        static void TryCatch()
        {
            Console.WriteLine("Enter age: ");
            string input = Console.ReadLine();
            try
            {
                int age = int.Parse(input);
                Console.WriteLine("Valid" + age);
            }
            catch (FormatException)
            {
                Console.WriteLine(" Format Invalid");
            }
            catch (Exception)
            {
                Console.WriteLine("Invalid");
            }
            finally
            {
                Console.WriteLine("final");
            }


        }

    }
}
