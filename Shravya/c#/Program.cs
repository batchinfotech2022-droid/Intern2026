using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharp_console_app
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Console.WriteLine("hello ,World!");

            //int id = 101;
            //string name = "sam";
            //double salary = 230000.0;
            //bool isActive = true;
            //DateTime joiningDate = DateTime.Now;
            //var department = 123;

            //Console.WriteLine("Id is " + id);
            //Console.WriteLine("Name is " + name);
            //Console.WriteLine("Salary is " + salary);
            //Console.WriteLine("Department is " + department);
            //Console.WriteLine("Joining Date is " + joiningDate);
            //double Additionresult=Add(2.34, 5.0);
            //Console.WriteLine("Addition: " + Additionresult);
            //Subtract(2,5);
            //Multiply(4, 5);
            //division(6, 4);
            //int exp=explicitly(5, 8);
            //Console.WriteLine("Answer for Explicit: " + exp);

            //double imp = implicitly(5, 8.3);
            //Console.WriteLine("Answer for Implicit: " + imp);

            //double expli = implicitly(5, 8.3);
            //Console.WriteLine("Answer for Implicit: " + imp);

            //int resultt = Employee(1.9f,2.0,"12");
            //Console.WriteLine(resultt);
            //Console.ReadLine();

            //String testt = test1(15);
            //Console.WriteLine("ANswer is" + testt);

            //int count = countattendance(10);
            //Console.WriteLine("the total student present"+count);

            //example();
            //StringHandlingExample();

            //TryCatchExample();
            //hi

            //Student student1 = new Student(1,"shru",80);//class from Student
            //student1.Id = 1;
            //student1.Name = "ALice";
            //student1.Marks = 89;
            //student1.displayInfo();
            //Student.CollegeName = "Alva's";
            // student1.displayInfo1();
            // Student.CollegeName = student1.Name;
            //bool res=  Student.IsCollegeValid(); 
            // Console.WriteLine(res);


            Teachaer t = new Teacher();
            t.Id = 101;
            t.Name = "Mr. Smith";
            t.Marks =95;
            Console.ReadLine();
            
        }
        public static double Add(double x,double y,double z=1)
        {
            double result = x + y+z;
           // Console.WriteLine("Addition:" + result);
            return result;
        }
        public static double Add(int x, double y)
        {
            double result = x+ y ;
            // Console.WriteLine("Addition:" + result);
            return result;
        }
        public static void Subtract(int x,int y)
        {
            int result = x - y;
            Console.WriteLine("Subtraction: " + result);
        }
        public static void Multiply(int x, int y)
        {
            int result = x * y;
            Console.WriteLine("Multiplication: " + result);
        }
        public static void division(int x, int y)
        {
            int result = x / y;
            Console.WriteLine("Division: " + result);
        }

        //type casting explicit
        public static int explicitly(int x, double y)
        {
            int result = x + (int)y;
            return result;
        }

        //type casting implicit
        public static double implicitly(int x, double y)
        {
            double result = x + y;
            return result;
        }
        static int expli(double value)
        {
            int result = Convert.ToInt32(value);
            return result;
        }
        static int Employee(float id, double age, string name)
        {
            int res = (int)id;


            int tes = (int)age;

            int des = Convert.ToInt32(name);
            return des;
        }

        //if-else
        static string test1(int no)
        {
            if (no < 20)
            {
                return "Number is less than 20";

            }
            else if (no > 20)
            {
                return "Number is more than 20";
            }
            else
            {
                return "Number is unavailable ";
            }
        }

        //for loop
        static int countattendance(int totalstudents)
        {
            int presentcount = 0;
            for(int i = 1; i <= totalstudents;i++)
            {
                presentcount++;
                if (i == 5)
                {
                    presentcount--;
                    Console.WriteLine("5 student is absent");
                    continue;
                }
                if (i == 8)
                {
                    Console.WriteLine("8 student present then loop stopped ");
                    break;

                    
                }

                Console.WriteLine("Student " + i + "is present");
            }
            return presentcount;
        }

//LIst
        static void example()
        {
            List<int> sum = new List<int>();
            for (int i = 1; i <= 10; i++)
            {
                sum.Add(i);
                Console.WriteLine(sum);

                if (i == 5)
                {
                    sum.Remove(i);
                }
            }
            Console.WriteLine("List is ");
            foreach(int h in sum)
            {
                Console.WriteLine(h);
            }
        }

        //StringHandling
        static void StringHandlingExample()
        {
            string text="   AkhjDhjjFFjj     ";
            
            Console.WriteLine(text.Length);
        }



        //trycatch example

        static void TryCatchExample()
        {
            Console.WriteLine("Enter a age:");
            String input = Console.ReadLine();

            try
            {
                int age = int.Parse(input);
                Console.WriteLine("Valid age entered:" + age);
            }
            catch(FormatException Exception)
            {
                Console.WriteLine("Invalid input");
            }
            catch(Exception) {
                Console.WriteLine("Invalid Error");
            }
            finally
            {
                Console.WriteLine("THis is final");
            }
        }




        
        
        
    }
}
