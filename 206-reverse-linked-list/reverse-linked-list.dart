/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    if (head == null) return null;
    ListNode? curr;
    ListNode? temp;
    
    // iteractively
    while (head != null) {
        temp = head?.next;
        head?.next = curr;
        curr = head;
        head = temp;
    }

    return curr;
  }
}