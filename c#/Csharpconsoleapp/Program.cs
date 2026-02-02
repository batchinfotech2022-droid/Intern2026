using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Csharpconsoleapp
{
    internal class Program
    {
        static void Main(string[] args)
        {


           string test = check(6);
            Console.WriteLine("Number is :" + test);
            //add(10, 20);
            //sub(30, 20);
            //mul(10, 20);
           // func(10.500,20,50);

            Console.ReadLine();

        }
        //public static int add(double x,int y,int z=1)
        //{
        //    int res = (int)x + y + z;
        //    //Console.WriteLine("Result:" + res);
        //    return res;
        //}
        //private static void sub(int x, int y)
        //{
        //    int res = x - y;
        //    Console.WriteLine("Result of Subtraction:" + res);
        //}
        //static void mul(int x, int y)
        //{
        //    int res = x * y;
        //    Console.WriteLine("Result of Multiplication:" + res);
        //}
        //static void func(double x, int y, float z)
        //{
        //    int res1 = (int)x + y + (int)z;
        //    Console.WriteLine(" Result in Int :" + res1);
        //    double res2 = x + y + z;
        //    Console.WriteLine(" Result in Double :" + res2);
        //    float res3 = (float)x + y + z;
        //    Console.WriteLine(" Result in float :" + res3);

        //}
        static string check(int x)
        {
            if (x >= 10)
                return " Valid";
            else if (x >= 5)
                return "Not valid";
            else
                return "unavailable";

        }

    }
}
