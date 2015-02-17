import java.util.*;
import java.io.*;

/*
Tough
Meh
Well you could just bruteforce
 */
public class eleventhSolution {
	public static void main(String[] args) throws FileNotFoundException {
		File file = new File("array.txt");
		Scanner s = new Scanner(file);
		int[][] arr = convertToArray(s);
		//arr is in [rows][columns] format
	}

	public static int[][] convertToArray(Scanner file) {
		int[][] result = new int[20][20];
		int rowCount = 0;
		int columnCount = 0;

		while(file.hasNextLine()) {
			Scanner line = new Scanner(file.nextLine());
			columnCount = 0;

			while (line.hasNext()) {
				result[rowCount][columnCount] = line.nextInt();
				columnCount++;
			}

			rowCount++;
		}

		return result;
	}

	public static int iterateThroughAdjacents(int[][] arr) {
		int max = 0;

		for (int i = 0; i < 20; i++) {
			for (int j = 0; j < 20; j++) {
				for (int k = 1; k < 4; k++) {
					if (compareToMax(max, val, k)) {
						val = val
					}
				}
			}
		}
	}

	public static boolean compareToMax(int max, int val, int k) {
		return val * Math.pow(99, 4 - k) >= max;
	}
	
	public static void printArray(int[][] arr) {
		for (int[] i : arr) {
			System.out.println(Arrays.toString(i));
		}
	}
}