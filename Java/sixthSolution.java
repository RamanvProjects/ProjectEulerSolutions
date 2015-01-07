/**

The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers
 and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred 
natural numbers and the square of the sum.

Work:

(1+...n)^2 = 1^3 +... n^3
1^3... n^3 - 1^2 +... n^2 = n^3 - n^2 = n^2(n - 1)

just use for loop, n-time
 */

public class sixthSolution {
	public static void main(String[] args) {
		int n = 100; //Change this for extensibility
		int result = 0;
		for (int i = 1; i <= n; i++) {
			result += Math.pow(i, 2)*(i - 1);
		}

		System.out.println(result);
	}
}