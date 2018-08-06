package lessonsOrSo;

public class ArraysAndForLoops {

	/*
	 * public static int[] numArray;
	 * 
	 * public static void main(String[] args) { numArray = new int[4];
	 * numArray[0] = 90; numArray[1] = 2; numArray[2] = 7; numArray[3] = 3; for
	 * (int i = 0; i < numArray.length; i++) { numArray[i] *= 2;
	 * System.out.println(numArray[i]); }
	 * 
	 * }
	 */

	public static int[][] numArray;

	public static void main(String[] args) {
		numArray = new int[4][4];
		numArray[0][0] = 9;
		numArray[1][3] = 2;
		numArray[2][1] = 7;
		numArray[3][3] = 3;
		numArray[3][0] = 8;
		for (int i = 0; i < numArray.length; i++) {
			for (int j = 0; j < numArray.length; j++) {
				System.out.print(numArray[i][j] + " ");
			}
			System.out.println();
		}

	}

}
