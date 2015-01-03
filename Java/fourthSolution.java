//This one's easy and self-explanatory. Approximately O(n)
public class fourthSolution {
	public static void main(String[] args) {
		System.out.println(testSquare(1000));
	}

	public static boolean isPalindrome (int num) {
		String test = Integer.toString(num);
		for (int i = 0; i < test.length()/2; i++) {
			if (test.charAt(i) != test.charAt(test.length() - 1 - i)) {
				return false;
			}
		}

		return true;
	}

	public static int testSquare (int size) {
		int max = 0;
		for (int i = 100; i < size; i++) {
			for (int j = i; j < size; j++) {
				if(isPalindrome(i*j)) {
					max = Math.max(max,i*j);
				}
			}
		}

		return max;
	}
}