/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? oddEvenList(ListNode? head) {
    if (head == null || head.next == null || head.next?.next == null) return head;

    ListNode? odd = head;
    ListNode? even = head.next;
    ListNode? evenBegin = head.next;

    while (odd?.next != null && even?.next != null) {
      odd?.next = even?.next;
      even?.next = odd?.next?.next;
      odd = odd?.next;
      even = even?.next;
    }

    odd?.next = evenBegin;

    return head;
  }
}