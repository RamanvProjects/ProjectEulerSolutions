public class thirdSolution {
	public static void main(String[] args) {
		long num = Integer.MAX_VALUE;
		System.out.println(largestFactor(num));
	}

	//This turned out to be not used in the code, but it's a pretty interesting primality test
	//Only O(n^.5) time
	public static boolean isPrime (int n) {
		for (int i = 2; i <= Math.pow(n,.5); i++) {
			if (n % i == 0) {
				return false;
			}
		}
		return true;
	}

	//O(n/2) time, kind of sucks
	public static long largestFactor (long n) {
		long max = 0;

		for (int i = 1; i <= n/2; i++) {
			if (n % i == 0) {
				n /= i;
				max = Math.max(n, i); 		
		 	}	 	
		}

		if (max == 1) {
			return n;
		} else {
			return max;
		}
	}
} 