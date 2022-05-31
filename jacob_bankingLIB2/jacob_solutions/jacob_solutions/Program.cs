using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using jacob_bankingLIB2;

namespace jacob_solutions
{
    internal class Program
    {
        
        static void Main(string[] args)
        {
            bool continueBanking = true;
            while (continueBanking == true)
            {
                Console.WriteLine("~~~~ Welcome to The Super Bank ~~~");
                Console.WriteLine("1. Access my Checking Account");
                Console.WriteLine("2. Access my Savings Account");
                Console.WriteLine("3. Access my Personal Loans");
                Console.WriteLine("4. Exit");

                int choice = Convert.ToInt32(Console.ReadLine());
                switch (choice)
                {
                    case 1:
                        Console.WriteLine("Accessing your Checking Account...");
                        var acc = new Accounts(101, "Jacob's Checking", Designation.Checking, 75000, true);
                        Console.WriteLine(acc.accNo);
                        Console.WriteLine(acc.accName);
                        Console.WriteLine(acc.accType);
                        Console.WriteLine(acc.accBalance);
                        Console.WriteLine(acc.accIsActive);
                        break;

                    case 2:
                        Console.WriteLine("Accessing your Personal Savings Account...");
                        var accsave = new Accounts(102, "Jacob's Savings", Designation.Savings, 33000, true);
                        Console.WriteLine(accsave.accNo);
                        Console.WriteLine(accsave.accName);
                        Console.WriteLine(accsave.accType);
                        Console.WriteLine(accsave.accBalance);
                        Console.WriteLine(accsave.accIsActive);
                        break;

                    case 3:
                        Console.WriteLine("Accessing your Personal Loans...");
                        var accloans = new Accounts(103, "Jacob's Personal Loans", Designation.Loan, 4300, true);
                        Console.WriteLine(accloans.accNo);
                        Console.WriteLine(accloans.accName);
                        Console.WriteLine(accloans.accType);
                        Console.WriteLine(accloans.accBalance);
                        Console.WriteLine(accloans.accIsActive);
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
                                Console.WriteLine("Thank you for banking with The Super Bank");
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
