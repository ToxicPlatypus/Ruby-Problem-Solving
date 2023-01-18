def is_palindrome(head)
    slow = fast = head

    while fast and fast.next
        slow = slow.next
        fast = fast.next.next
    end

    slow = reverse(slow)
    current = head

    while slow
        if current.val != slow.val
            return false
        end
        slow = slow.next
        current = current.next
    end
    return true
end

def reverse(node)
    prev = nil
    nxt = nil
    while node != nil
        nxt = node.next
        node.next = prev
        prev = node
        node = nxt
    end
    prev
end

