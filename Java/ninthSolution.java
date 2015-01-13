//check haskell solution, so easy :-)

/*
Some maths:

a^2 + b^2 = c^2

note squares sequence: (num - square format)

1 - 1
2 - 4
3 - 9
4 - 16
5 - 25
.
.
.

note the differences in the squares:

3 , 5 , 7 , 9...

Therefore if a positive int N is squared, the difference between the square value and the next one
is:

2N + 1

How does this help. Search for squares in this sequence
*/
public class ninthSolution {
	public static void main(String[] args) {
		int count = 0;
		int n = 0;
		int sum = 0;
		while (sum < 1000) {
			if (Math.pow(odds(n), .5) % 1 == 0) {
				count++;
				System.out.println(Math.round(Math.pow(odds(n), .5)) + " " + n + " " + (n + 1));
				sum = (int) Math.round(Math.pow(odds(n), .5)) + n + (n + 1);
				System.out.println(sum);
				if (1000 % sum == 0) {
					System.out.println(sum);
				}
			}
			n++;
		}
	}

	public static int odds(int N) {
		return 2*N + 1;
	}
}