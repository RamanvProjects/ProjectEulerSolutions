//Also pretty easy, factors code is partially recycled from secondSolution
//First version didn't answer question correctly
/**
 * Let's do some math
 *
 *
 * First solution was completely wrong (check earlier commits)
 *
 * Use Euclids algorithm for GCD 
 *
 * LCM = |a.b|/gcd(a,b)
 */
import java.util.*;

public class fifthSolution {
	public static void main(String[] args) {
		int length = 20; //change for different sizes
		Integer[] arr = new Integer[length]; //populating array

		for (int i = 0; i < arr.length; i++) {
			arr[i] = i + 1;
		}

		while (arrs.size() > 1) {
			arrs.set(0, lcm(arrs.get(0), arrs.remove(1)));
		}

		System.out.println(arrs.get(0));
	}

	/**
	 * Finds unique factors and returns an arraylist with those unique factors
	 * Test, Not necessary for code apparently, I'll leave it because it's interesting
	 * @return ArrayList of Unique Factors
	 */
	public static ArrayList<Integer> uniqueFactors (long n) {
		ArrayList<Integer> answer = new ArrayList<Integer>();
		answer.add(1);
		int i = 2;
		while(n > 1) {
			if (n % i == 0) {
				n /= i;
				answer.add(i);
				i = 1;
			}
			i++;
		}

		return answer;
	}

	public static int lcm (int a, int b) {
		return Math.abs(a * b)/gcd(a, b);
	}

	public static int gcd (int a, int b) {
		while (b != 0) {
			int temp = b;
			b = a % b;
			a = temp;
		}
		return a;
	}
}