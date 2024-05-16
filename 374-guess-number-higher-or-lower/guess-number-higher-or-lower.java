/** 
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0
 * int guess(int num);
 */

public class Solution extends GuessGame {
    public int guessNumber(int n) {
        return search(1, n);
    }

    private int search(int low, int high) {
      int mid = low + (high - low) / 2;

      int res = guess(mid);

      if (res == -1) {
        return search(low, mid - 1);
      } else if (res == 1) {
        return search(mid + 1, high);
      } else {
        return mid;
      }
    }
}