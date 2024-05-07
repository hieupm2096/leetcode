/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? deleteMiddle(ListNode? head) {
    if (head == null || head.next == null) return null;

    ListNode? slow = head;
    ListNode? fast = head;

    while (fast != null && fast.next != null) {
      fast = fast.next?.next;

      if (fast == null || fast.next == null) {
        slow?.next = slow?.next?.next;
        return head;
      }

      slow = slow?.next;
    }

    return null;
  }
}