//This one needs work... Totally brute force :-(

//But it works. Basic O(n^.5) primality stuffs
public class seventhSolution {
	public static void main(String[] args) {
		int num = 2;
		int count = 0;
		while (count < 10001) {
			if (isPrime(num)) {
				count++;
			}
			num++;
		}

		System.out.println(num - 1);
	}

	public static boolean isPrime (int num) {
		for (int i = 2; i <= Math.pow(num, .5); i++) {
			if (num % i == 0) {
				return false;
			}
		}
		return true;
	}
}