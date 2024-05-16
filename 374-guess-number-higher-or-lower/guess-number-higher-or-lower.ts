/** 
 * Forward declaration of guess API.
 * @param {number} num   your guess
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0
 * var guess = function(num) {}
 */


function guessNumber(n: number): number {
  return search(1, n);
};

function search(low: number, high: number): number {
  let mid = Math.floor((high + low) / 2)

  let res = guess(mid)

  if (res == -1) {
    return search(low, mid - 1)
  } else if (res == 1) {
    return search(mid + 1, high)
  } else {
    return mid;
  }
}