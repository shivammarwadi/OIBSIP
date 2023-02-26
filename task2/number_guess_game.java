package task2;

import java.util.Scanner;

public class number_guess_game {
		public static void guessingNumberGame() {
			Scanner scc = new Scanner(System.in);

			int number = 1 + (int) (100 * Math.random());

			int K = 7;

			int i, tri;

			System.out.println(
					"There is a number hiding between 1 to 100. take on the challenge and try to guess the number you will get 7 trials.");

			for (i = 0; i < K; i++) {

				System.out.println("guess the number:");

				tri = scc.nextInt();
				if (number == tri) {
					System.out.println("Congratulations!" + " You guessed the number. You took just [[" + (i + 1)
							+ "]] tries to guess the number thus you have eared <<" + ((K - (i + 1)) * 100)
							+ ">> points outoff 700 points");
					break;
				} else if (number > tri && i != K - 1) {
					System.out.println("The number is " + "greater than " + tri);
				} else if (number < tri && i != K - 1) {
					System.out.println("The number is" + " less than " + tri);
				}
			}

			if (i == K) {
				System.out.println("You have exhausted" + " K trials.");

				System.out.println("The number was " + number);

			}
		}

		public static void main(String args[]) {
			int n = 1;
			Scanner scan = new Scanner(System.in);
			while (n == 1) {

				guessingNumberGame();
				System.out.println("For continue press 1");
				System.out.println("For exit press 0");
				n = scan.nextInt();
			}
			System.out.println("Thanks for playing the game");
		}

	}

