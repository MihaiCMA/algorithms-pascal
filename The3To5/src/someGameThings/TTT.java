package someGameThings;

import java.util.Scanner;

public class TTT {
	public static int row, col;
	public static boolean playing;
	public static Scanner scan = new Scanner(System.in);
	public static char[][] board = new char[3][3];
	public static char turn = 'X';

	public static void main(String[] args) {
		for (int i = 0; i < 3; i++) {
			for (int j = 0; j < 3; j++) {
				board[i][j] = '_';
			}
		}
		PrintBoard();
		Play();

	}

	public static void Play() {
		boolean playing = true;
		System.out.println("Introduceti coordonatele casutei:");
		while (playing) {
			row = scan.nextInt() - 1;
			col = scan.nextInt() - 1;

			if (board[row][col] != '_') {
				boolean wrong = true;
				while (wrong) {
					System.out.println("Casuta este ocupata.Incearca alta casuta: ");
					row = scan.nextInt() - 1;
					col = scan.nextInt() - 1;
					if (board[row][col] == '_') {
						wrong = false;
					}
				}
				board[row][col] = turn;
			} else {
				board[row][col] = turn;
			}
			if (GameOver(row, col)) {
				playing = false;
				System.out.println("Jocul s-a incheiat! Jucatorul " + turn + " a castigat!");
			}
			PrintBoard();
			System.out.println();
			if (turn == 'X')
				turn = 'O';
			else
				turn = 'X';
		}
	}

	public static void PrintBoard() {
		for (int i = 0; i < 3; i++) {
			System.out.println();
			for (int j = 0; j < 3; j++) {
				if (j == 0) {
					System.out.print("| ");
				}
				System.out.print(board[i][j] + " | ");
			}
		}
		System.out.println();
	}

	public static boolean GameOver(int rMove, int cMove) {

		if (board[0][cMove] == board[1][cMove] && board[0][cMove] == board[2][cMove])
			return true;
		if (board[rMove][0] == board[rMove][1] && board[rMove][0] == board[rMove][2])
			return true;

		if (board[0][0] == board[1][1] && board[0][0] == board[2][2] && board[1][1] != '_')
			return true;
		if (board[0][2] == board[1][1] && board[0][2] == board[2][0] && board[1][1] != '_')
			return true;
		return false;
	}

}
