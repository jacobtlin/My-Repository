using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jacob_bankingLIB2
{
    public enum Designation
    {
        Checking,
        Savings,
        Loan
    }
    public class Accounts
    {
        public int accNo { get; set; }
        public string accName { get; set; }
        public string accType { get; set; }
        public double accBalance { get; set; }
        public bool accIsActive { get; set; }


        public Accounts(int p_accNo, string p_accName, Designation p_accType, double p_accBalance, bool p_accIsActive)
        {
            accNo = p_accNo;
            accName = p_accName;
            accType = p_accType.ToString();
            accBalance = p_accBalance;
            accIsActive = p_accIsActive;

            Console.WriteLine("Accessing Personal Accounts...");
        }
    }
}
