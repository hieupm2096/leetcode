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
  let t = Math.floor((high + low) / 2)

  if (t == low) {
    if (guess(high) == 0) return high;
  }

  let res = guess(t)

  if (res == -1) {
    return search(low, t)
  } else if (res == 1) {
    return search(t, high)
  } else {
    return t;
  }
}