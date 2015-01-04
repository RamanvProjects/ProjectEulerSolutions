//Also pretty easy, factors code is partially recycled from secondSolution
import java.util.*;
public class fifthSolution {
	public static void main(String[] args) {
		ArrayList<Integer> result = new ArrayList<Integer>();
		int numMax = 10; //Change this for different answers

		for (int i = 1; i < numMax; i++) {
			result.addAll(uniqueFactors(i));
		}
		System.out.println(result);
		Set<Integer> removeDups = new HashSet<Integer>(result);
		System.out.println(removeDups);
		System.out.println(multiSet(removeDups));
	}

	/**
	 * Finds unique factors and returns an arraylist with those unique factors
	 * Test
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

	public static int multiSet (Set<Integer> ints) {
		int result = 1;
		for (Integer num : ints) {
			result *= num;
		}

		return result;
	}
}