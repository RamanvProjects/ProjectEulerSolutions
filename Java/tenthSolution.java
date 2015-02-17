public class tenthSolution {
	public static void main(String[] args) {
		int sum = 0;
		for (int i = 2; i < 2000000; i++) {
			if (isPrime(i)) {
				sum += i;
			}
		}

		System.out.println(sum);
	}

	public static boolean isPrime(int n) {
		for (int i = 2; i*i <= n; i++) {
			if (n % i == 0) {
				return false;		
			}
		}

		return true;
	}
}