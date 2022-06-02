using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using jacob_bankingLIB2_v2;

namespace jacob_solutions
{
    internal class Program
    {
        
        static void Main(string[] args) //
        {
            bool continueBanking = true;
            while (continueBanking == true)
            {
                Console.WriteLine("~~~~ Welcome to The Super Bank ~~~");
                Console.WriteLine("Press 1: to access your Checking Account");
                Console.WriteLine("Press 2: to access your Savings Account");
                Console.WriteLine("Press 3: to access your Personal Loans");
                Console.WriteLine("Press 4: to Exit");
                Console.WriteLine("");
                Console.WriteLine("Please choose an option");

                int choice = Convert.ToInt32(Console.ReadLine());
                switch (choice)
                {
                    case 1:
                        Console.WriteLine("Welcome Jacob!");
                        var acc = new Accounts(101, "Snapshot of your checking balance: ", Designation.Checking, 75000, true);
                        Console.WriteLine("");
                        Console.WriteLine("Checking Account No. " + acc.accNo);
                        Console.WriteLine("Account Type: " + acc.accType);
                        Console.WriteLine(acc.accName);
                        Console.WriteLine("$" + acc.accBalance);
                        Console.WriteLine("");
                        Console.WriteLine("Press any key to continue banking.");
                        break;

                    case 2:
                        Console.WriteLine("Welcome Jacob!");
                        var accsave = new Accounts(102, "Snapshot of your savings balance: ", Designation.Savings, 33000, true);
                        Console.WriteLine("");
                        Console.WriteLine("Savings Account No. " + accsave.accNo);
                        Console.WriteLine("Account Type: Premium " + accsave.accType);
                        Console.WriteLine(accsave.accName);
                        Console.WriteLine("$" + accsave.accBalance);
                        Console.WriteLine("");
                        Console.WriteLine("Press any key to continue banking.");
                        break;

                    case 3:
                        Console.WriteLine("Welcome Jacob!");
                        var accloans = new Accounts(103, "Snapshot of your personal loans: ", Designation.Loan, 4300, true);
                        Console.WriteLine("");
                        Console.WriteLine("Super Bank Personal Loan Account No. " + accloans.accNo);
                        Console.WriteLine("Account Type: Ready " + accloans.accType);
                        Console.WriteLine(accloans.accName);
                        Console.WriteLine("$" + accloans.accBalance);
                        Console.WriteLine("");
                        Console.WriteLine("Press any key to continue banking.");
                        break;

                    case 4:
                        bool continueMenu = true;
                        while (continueMenu == true)
                        {
                            Console.WriteLine("Are you sure you want to exit this screen?");
                            Console.WriteLine("1. Press 1 for YES");
                            Console.WriteLine("2. Press 2 for NO");
                            string menuOption = Console.ReadLine();

                            if (menuOption == "1")
                            {
                                Console.WriteLine("You are now leaving the screen.");
                                Console.WriteLine("Thank you!");
                                return;
                            }
                            if (menuOption == "2")
                            {
                                Console.WriteLine("Returning to main menu shortly. Press Any Key to Continue");
                                break;
                            }

                        }
                        break;
                }
                Console.ReadLine();
                Console.Clear();
                
            }

        }
    }
}
