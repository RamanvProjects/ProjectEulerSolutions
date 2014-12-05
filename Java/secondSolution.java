import java.util.*;
public class secondSolution {
	public static void main(String[] args) {
		int lastNumber = 1;
		int secondNumber = 2;
		int sum = 0;
		int max = 4000000;
		ArrayList<Integer> ints = new ArrayList<Integer>();
		ints.add(lastNumber);
		ints.add(secondNumber);
		//Iteratively produce fibonacci (quick and dirty)

		for(int i = 0; sum < max; i++) {
			sum = lastNumber + secondNumber;
			lastNumber = secondNumber;
			secondNumber = sum;
			ints.add(sum);
		}

		ints.remove(ints.size() - 1); // fenceposting
		System.out.println(sums(ints));
	}

	public static int sums(ArrayList<Integer> arr) {
		int sum = 0;
		for (int i = 1; i < arr.size() ; i += 3) {
			sum += arr.get(i);
		}
		return sum;
	}
}