using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using JTL_EmployeeLIB_Day8;

namespace JTL_EmployeeConsole_Day8
{
    internal class Program
    {
        static void Main(string[] args)
        {
            #region Exceptions Demo
            try
            {
                var empObj = new Employee(101, "Jacob", "Pharmacy", 8000, 25);
                Console.WriteLine(empObj.DivideNumber(10, 0));
            }
            catch(Exception es)  //NOTE: 'es' is a variable of the Exception class 
                                 //because it is a variable, you can name it anything you like
            {
                Console.WriteLine(es.Message);
            }
            finally
            {
                //this is an optional block
                //also a neutral block for 'try' / 'catch'
                //code written here will be executed irrespective of success or failure
                //when the 'catch' is successful, this block is used to clear the reference, like close the file, close database connection etc.

                Console.WriteLine("Thank you!");
            }
            #endregion

            try
            {
                var empObj2 = new Employee(101, "Justin", "Developer", 7000, 10);

                Console.WriteLine("Enter the number of days you wish to use for leave");
                int leaveDays = Convert.ToInt32(Console.ReadLine());

                bool result = empObj2.ApplyLeaves(leaveDays);
                Console.WriteLine("Your leaves are approved");
            }
            catch(FormatException fc)
            {
                Console.WriteLine(fc.Message);
                Console.WriteLine("Please enter only Numeric values");
            }
            catch(DivideByZeroException dv)
            {
                Console.WriteLine(dv.Message);
            }
            catch (Exception es)
            {
                Console.WriteLine(es.Message);
            }
        }
    }
}
