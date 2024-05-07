/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  int pairSum(ListNode? head) {
    final arr = <int>[];

    while (head != null) {
      arr.add(head.val);
      head = head.next;
    }

    var max = 0;

    for (var i = 0; i < arr.length / 2; i++) {
      final val = arr[i] + arr[arr.length - i - 1];
      if (val > max) max = val;
    }

    return max;
  }
}