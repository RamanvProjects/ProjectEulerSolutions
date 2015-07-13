public class firstSolution {
	public static void main(String[] args) {
		int sum = 0;
		int max = 1000; //change this value for higher sums
		for (int i = 1; i < max; i++) {
			if (i % 3 == 0) {
				sum += i;
			} else if (i % 5 == 0) {
				sum += i;
			}
		}
		System.out.println(sum);
	}
}
