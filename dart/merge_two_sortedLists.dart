/**
 * Definition for singly-linked list.
 */
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    //create a dummy head node. This makes handling the very first node
    //of the merged list much simpler, as we dont't have to check for a null head

    ListNode dummyHead = ListNode();

    //current [pointer] will always point to the last node added to our
    //new merged list. Initially, it points to the dummy head.

    ListNode current = dummyHead;

    //Loop as long as there are still nodes in Both list1 and list2
    //we compare their values and add the smaller one to the merged list.

    while (list1 != null && list2 != null) {
      if (list1.val <= list2.val) {
        // If list1's current node has a smaller or equal value:
        // a. Append list1's current node to our merged list.
        //    (This means current.next now points to list1's current node).
        current.next = list1;
        //move list1's pointer to the next node.
        list1 = list1.next;
      } else {
        // If list2's current node has a smaller value:
        //  Append list2's current node to our merged list.
        current.next = list2;
        //move list2's pointer to the next node.
        list2 = list2.next;
      }
      // after appending a node, move our 'current pointer'
      //forward to the node we just added, this keeps current at the end of the growing merged list , ready for the next
      // node to be added. we use the '!' operator to assert that current.next is not null
      current = current.next!;
    }
    // After the loop, one of the lists might still have remaining nodes. since these remaining nodes are already sorted, we can simply
    // append the rest of that list directly to the end of our merged list.
    if (list1 != null) {
      current.next = list1;
    } else if (list2 != null) {
      current.next = list2;
    }
    return dummyHead.next;
  }
}
