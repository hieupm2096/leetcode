/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
//   ListNode? reverseList(ListNode? head) {
//     if (head == null) return null;
//     ListNode? curr;
//     ListNode? temp;
    
//     // iteractively
//     while (head != null) {
//         temp = head?.next;
//         head?.next = curr;
//         curr = head;
//         head = temp;
//     }

//     return curr;
//   }
    ListNode? reverseList(ListNode? head) {
        if (head == null || head.next == null) return head;
        
        return reverse(null, head);
    }

    ListNode? reverse(ListNode? prev, ListNode? curr) {
        if (curr == null) return prev;

        final next = curr.next;

        curr.next = prev;

        return reverse(curr, next);
    }
}