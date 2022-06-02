using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JTL_bankingLIB_wExceptions
{
    public class Savings : Accounts
    {
        public Savings(int p_accNo, string p_accName, double p_accBalance) : base (p_accNo, p_accName, p_accBalance)
        {

        }

        public override double Withdraw(int p_withdrawAmt)
        {
            if (p_withdrawAmt > 20000)
            {
                throw new Exception("Savings allowed maximum withdrawal amount is $20,000");
            }
            accBalance = accBalance - p_withdrawAmt;
            return accBalance;
        }

        public override double Deposit(int p_depositAmt)
        {
            if (p_depositAmt > 50000)
            {
                throw new Exception("Unable to make deposit less than $0.00");
            }
            accBalance = accBalance + p_depositAmt;
            return accBalance;
        }
    }
}
