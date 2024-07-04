/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeNodes(ListNode? head) {
    if (head == null) return null;

    ListNode? curr = head;

    while (curr != null) {
      if (curr.val == 0) {
        var next = curr.next;

        var sum = 0;

        while (next != null && next.val != 0) {
          sum += next.val;
          next = next.next;
        }

        curr.val = sum;

        if (next?.next == null) {
          next = null;
        }

        curr.next = next;
        curr = next;
      }
    }

    return head;
  }
}