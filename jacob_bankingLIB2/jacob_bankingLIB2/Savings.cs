using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jacob_bankingLIB2
{
    public class Savings : Accounts
    {
        public Savings(int p_accNo, string p_accName, Designation p_accType, double p_accBalance, bool p_accIsActive, string p_accDesignation) : base(p_accNo, p_accName, p_accType, p_accBalance, p_accIsActive)
        {
            Console.WriteLine("Accessing Personal Savings Account...");
        }
    }
}
