# Definition for singly-linked list.
# This class would typically be provided by the LeetCode environment.
class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution(object):
    def mergeTwoLists(self, list1, list2):
        """
        :type list1: Optional[ListNode]
        :type list2: Optional[ListNode]
        :rtype: Optional[ListNode]
        """
        # 1. Create a dummy head node. Its 'next' will eventually point to the actual head
        #    of our merged list. This simplifies handling the first node.
        dummy_head = ListNode()

        # 2. 'current' will be our pointer that we move along the new merged list,
        #    always pointing to the last node added.
        current = dummy_head

        # 3. Loop as long as there are still nodes in BOTH list1 AND list2.
        #    We compare their current values and add the smaller one.
        while list1 is not None and list2 is not None:
            # Compare the values of the current nodes in both lists.
            if list1.val <= list2.val:
                # If list1's value is smaller or equal:
                # a. Append list1's current node to our merged list.
                current.next = list1
                # b. Then, move list1's pointer forward to its next node.
                list1 = list1.next
            else:
                # If list2's value is smaller:
                # a. Append list2's current node.
                current.next = list2
                # b. Then, move list2's pointer forward to its next node.
                list2 = list2.next

            # 4. In either case, after appending a node, move our 'current' pointer
            #    forward to the node we just added. This keeps 'current' at the
            #    end of the growing merged list.
            current = current.next

        # 5. After the loop, one of the lists might still have remaining nodes.
        #    Since these remaining nodes are already sorted, we can simply
        #    append the rest of that list directly to the end of our merged list.
        if list1 is not None:
            current.next = list1
        elif (
            list2 is not None
        ):  # Use 'elif' because at most one list will have remaining nodes.
            current.next = list2

        # 6. The actual head of our merged list is the node immediately after the dummy_head.
        #    If both input lists were initially empty, dummy_head.next will be None,
        #    which correctly represents an empty merged list.
        return dummy_head.next


# Example usage
if __name__ == "__main__":
    # Create two sorted linked lists for testing
    list1 = ListNode(1, ListNode(2, ListNode(4)))
    list2 = ListNode(1, ListNode(3, ListNode(4)))

    solution = Solution()
    merged_list = solution.mergeTwoLists(list1, list2)

    # Print the merged list
    while merged_list:
        print(merged_list.val, end=" -> ")
        merged_list = merged_list.next
    print("None")  # Indicate the end of the list
