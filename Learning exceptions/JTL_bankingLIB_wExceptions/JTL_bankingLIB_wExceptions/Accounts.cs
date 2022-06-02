using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JTL_bankingLIB_wExceptions
{
    public abstract class Accounts
    {
        public int accNo { get; set; } 
        public string accName { get; set; }
        public double accBalance { get; set; }
        public bool accIsActive { get; set; }

        public Accounts(int accNo, string accName, double accBalance)        {
            if (accName.Length < 3)
            {
                throw new Exception("Please provide a name more than 3 characters");
            }
            if (accBalance < 100)
            {
                throw new Exception("Unable to open account. An initial funding of $100 is needed to open a new account");
            }

            this.accNo = accNo;
            this.accName = accName;
            this.accBalance = accBalance;
            this.accIsActive = true;

        }

        public virtual double Withdraw(int p_withdrawAmt)
        {
            if (p_withdrawAmt < 0)
            {
                throw new Exception("Sorry cannot allow withdrawing negative amount");
            }
            if (p_withdrawAmt > accBalance)
            {
                throw new Exception("Insufficient Balance");
            }
            accBalance = accBalance - p_withdrawAmt;
            return accBalance;
        }

        public virtual double Deposit(int p_depositAmt)
        {
            if(p_depositAmt < 0)
            {
                throw new Exception("Unable to initiate a deposit less than $0.00");
            }
            accBalance = accBalance + p_depositAmt;
            return accBalance;
        }
    }
}
