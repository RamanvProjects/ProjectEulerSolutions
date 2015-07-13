import java.util.*;

//I didn't believe it intuitively (did mathematically). It's done here empirically

public class MontyHallProblemTests {

	public static void main(String[] args) {
		int notSwitchCount = 0;
		int switchCount = 0;

		for (int i = 0; i < 1000; i++) {
			boolean[] arr = {false, false, false};
			Random r = new Random();
			int answer = r.nextInt(3);
			arr[answer] = true;
 
			Random choice = new Random();
			int pick = choice.nextInt(3);

			if (arr[pick]) {
				notSwitchCount++;
			}

			pick = switchPick(answer, pick);

			if (arr[pick]) {
				switchCount++;
			}
		}

		System.out.println("Without switching: " + notSwitchCount + "\n"
						 + "With switching:    " + switchCount);
	}

	/* public static boolean methodOne(int choice, int answer) {
		if (choice == answer) {
			return true;
		}

		return false;
	}

	public static boolean methodTwo(int choice, int answer, int removed) {
		if (removed) {
			
		}
	} */

	public static int switchPick(int answer, int pick) {
		Random r = new Random();
		ArrayList<Integer> choices = new ArrayList<Integer>(Arrays.asList(0, 1, 2));

		if (pick != answer) {
			choices.remove(pick); 

			if (answer == 0) {
				choices.remove(1); 
			} else {
				choices.remove(0);
			}
		} else {
			choices.remove(pick);
			choices.remove(r.nextInt(1));
		}

		return choices.get(0); //0
	}
}
