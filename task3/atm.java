package task3;
import java.util.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class atm {

	public static void main(String[] args) {

		int accno;
		int passcode;
		int accbal = 1500;
		int key;
		ArrayList<String> ans=new ArrayList<>();
		Scanner scanner = new Scanner(System.in);
		int abc;
		do {
			System.out.println(" Enter Your Account Number : ");
			int useraccno = scanner.nextInt();

			System.out.println(" Enter Your Passcode : ");
			int userpass = scanner.nextInt();

			if (useraccno <= 10000 && userpass <= 2000) {
				System.out.println(" ------- WELCOME TO BANK OF NAGPUR ------- ");
				abc = 0;

				do {
					System.out.println(" Select Option : \n 1 - Deposit \n 2 - Withdraw \n 3 - Transfer \n 4 - Transaction history \n 5 - logout");

					key = scanner.nextInt();
					switch (key) {
					case 1:
						System.out.println(" Your Account Balance : " + accbal + " \n");
						System.out.println(" Enter Deposit Amount :  ");
						int dipamt = scanner.nextInt();

						accbal = dipamt + accbal;

						System.out.println("\n Your Total Account Balance : " + accbal + "\n \n ");
						String s="Amount deposited Rs " +dipamt;
						ans.add(s);
						break;
					case 2:
						System.out.println(" Your Account Balance : " + accbal + " \n");

						System.out.println(" Enter Withdraw Amount : ");
						int widamt = scanner.nextInt();

						if (widamt < accbal) {
							System.out.println(" Please Enter Password to Withdraw Money : ");
							int widpass = scanner.nextInt();
							if (widpass == userpass) {
								accbal = accbal - widamt;
								System.err.println(" You Withdraw : " + widamt);
								System.out.println("\n Your Total Account Balance : " + accbal + " \n \n ");
								String s1="Amount Withdraw Rs " +widamt;
								ans.add(s1);
							} else {
								System.err.println(" Invaid Passcode -- Try Again..!");
							}

						} else {
							System.err.println("Insufficient Balance... \n \n");
						}
						break;
					case 3:

						System.out.println("\n Enter Beneficiary Account Number :");
						int benacc = scanner.nextInt();
						System.out.println("\n Enter Sending Amount :");
						int benamt = scanner.nextInt();
						if (benamt < accbal) {
							int otp = (int) ((Math.random() * 9000) + 1000);
							System.out.println("\n Your OTP is ---> " + otp);

							System.out.println("\n Enter OTP : ");
							int userotp = scanner.nextInt();

							if (userotp == otp) {
								accbal = accbal - benamt;
								System.out.println("\n Your Total Account Balance : " + accbal + " \n \n ");
							} else {
								System.err.println(" Invaid Passcode -- Try Again..!");
							}
							String s2="Amount Transfered Rs " +benamt;
							ans.add(s2);
						} else {
							System.err.println("Insufficient Balance... \n \n");
						}

						break;
					case 4:
						System.out.println("Your Transactions History is");
						for(String it:ans)System.out.println(it);
						break;
					case 5:
						System.err.println("\n Log-out Successfully \n Thank you.....");
						System.exit(0);
						break;

					default:
						break;
					}

				} while (true);

			} else {
				System.err.println("Invalid Credentials \n Try Again .... \n \n");
				abc = 1;
			}

		} while (abc > 0);
		scanner.close();
	}
}
