# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    previous = nil

    if head == nil
        return head
    end

    while head
        current = head
        head = head.next
        current.next = previous
        previous = current
    end
    return previous
end