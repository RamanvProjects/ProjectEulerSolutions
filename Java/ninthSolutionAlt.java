//This is fun, using Euclid's formula

public class ninthSolutionAlt {
	public static void main(String[] args) {
		int product = sums(10000);
		System.out.println(product);

	}

	public static int sums(int limit) {
		limit = (int) Math.ceil(Math.pow(limit, .5));
		int max = 0;
		for (int i = 0; i < limit; i++) {
			for (int j = 0; j < limit; j++) {
				int a = i*i - j*j;
				int b = 2*i*j;
				int c = i*i + j*j;
				if (a > 0 && b > 0 && c > 0) {
					System.out.println(a + " " + b + " " + c);
					max = Math.max(a + b + c, max);

					if (a + b + c == 1000) {
						return a*b*c;
					}
				}
			}
		}
		return max;
	}
} 			