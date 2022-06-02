using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Science
{
    public class Chemistry { public int moleculeID { get; set; } }
    public class Maths { public int moleculeID { get; set; }}
}

namespace JTL_EmployeeLIB_Day8
{
    public class Employee
    {
        public int empNo { get; set; }
        public string empName { get; set; }
        public string empDesignation { get; set; }
        public double empSalary { get; set; }
        public int empAvailableLeaves { get; set; }
        public Employee(int p_empNo, string p_empName, string p_empDesignation, double p_empSalary, int p_empLeaves)
        {
            if (p_empName.Length < 3)
            {
                throw new Exception("Name has to be minimum 3 characters");
            }
            if (p_empLeaves > 20)
            {
                throw new Exception("Maximum leave days can be 20");
            }

            empNo = p_empNo;
            empName = p_empName;
            empDesignation = p_empDesignation;
            empSalary = p_empSalary;
            empAvailableLeaves = p_empLeaves;
        }

        public int DivideNumber(int num1, int num2)
        {
            if (num2 == 0)
            {
                throw new DivideByZeroException("You cannot divide a number by Zero");
            }
            return num1 / num2;
        }

        public bool ApplyLeaves(int p_leaveDays)
        {
            if (p_leaveDays == 0 || p_leaveDays == 0)
            {
                throw new Exception("Please enter minimum 1 day for leave");
            }
            if (p_leaveDays > 15)
            {
                throw new Exception("You can use maximum of 15 days of leave at a strethch");
            }
            empAvailableLeaves = empAvailableLeaves - p_leaveDays;
            return true;
        }



    }
}
