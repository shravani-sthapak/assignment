import java.util.Scanner;
class Account
{
 private String branch;
	Account(String branch)
	{
		this.branch = branch;
	}

}

class Customer extends Account
{
	private long cardNumber;
	private int pin;
	private static double balance;

	Customer(long cardNumber, int pin, double balance)
	{
		super("State Bank of Patiala");
		this.cardNumber = cardNumber;
		this.pin = pin;
		this.balance = balance;
	}

	void withdraw()
	{	
		int i = 0, k=0;
		do {System.out.println("Enter card number");
		Scanner sc = new Scanner(System.in);
		long cn = sc.nextLong();
		System.out.println("Enter pin");
		int p = sc.nextInt();
		if(cn==cardNumber && p == pin)
		{
			System.out.println("Enter amount to be withdrawn");
			double amt = sc.nextDouble();
			if(amt<= balance)
			{
				System.out.println("Withdrawal successful \n Remaining Balance :"+ (balance-amt));
				k++;			
			}
			else System.out.println("Insufficient Balance");
		}
			else
			{ System.out.println("Invalid credentials");
				i++;
			 System.out.println("You have" + (3-i) +"attempts left");
			}
		} while(i<3 && k==0);
	}

	void checkBalance()
	{
		System.out.println("Balance :"+ balance);
	}
}


class TestMain
{
	public static void main(String args[])
	{	int option=0;
		Customer c1 = new Customer(12345, 000 , 25000);
		do 
		{System.out.println(" Welcome to State Bank of Patiala ATM service \nSelect an option : \n1. Withdraw \n2. Check Balance \n3. Exit" );
			Scanner s = new Scanner(System.in);
			 option = s.nextInt();
		switch(option)
		{
			case 1 : c1.withdraw();break;
			case 2 : c1.checkBalance();break;
			case 3 : System.exit(0); break;
			default : System.out.println("Invalid Option");
		}
	}while(option>0);
	
	}

}


