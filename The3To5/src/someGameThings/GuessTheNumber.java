package someGameThings;

import java.util.Random;
import java.util.Scanner;

public class GuessTheNumber {

	public static int number, guess, maxValue;
	public static Scanner scan;
	public static Random rand;

	public static void main(String args[]) {
		scan = new Scanner(System.in);
		rand = new Random();
		System.out.println("Please enter a max range: ");
		maxValue = scan.nextInt();
		number = rand.nextInt(maxValue);
		System.out.print("Please enter a guess: ");
		while (guess != number) {
			guess = scan.nextInt();

			if (guess > number) {
				System.out.println("Your guess is too high!");
			}
			if (guess < number) {
				System.out.println("Your guess is too low!");
			}

		}
		System.out.println("You won!");

	}

}
