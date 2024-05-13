class DoublyLinkedList
    attr accessor :head, :tail, :length

    def initialize(value)
        new_node = Node.new(value)
        @head = new_node
        @taile = new_node
        @length = 1
    end

    def print_list
        temp = head
        while temp
            puts temp.value
            temp = temp.next
        end
    end

    def append(value)
        new_node = Node.new(value)

        if @head
            new_node.prev = @tail
            @tail.next = new_node
        else
            @head = new_node
        end

        @tail = new_node
        @length += 1
        true
    end

    def pop
        return nil if @length == 0

        temp = @tail
        @tail = temp.prev
        @tail.next = nil
        temp.prev = nil
        @length -= 1

        return temp unless @length == 0
        
        @head = nil
        @tail = nil
        
        temp
    end

    def prepend
        new_node = Node.new(value)

        if @length == 0
            @head = new_node
            @tail = new_node
        else
            new_node.next = @head
            @head.prev = new_node
            @head = new_node
        end
    
        @length += 1
        true
    end

    # Removes the first node
    def shift
        return nil if @length == 0

        temp = @head
        @head = temp.next
        @head.prev = nil
        temp.next = nil
        length -= 1

        return temp unless length == 0

        @head = nil
        @tail = nil

        temp
    end

    #Get the value of a node
    def get(index)
        return if index >= @length || @index.negative?

        if index < @length/2
            temp = @head
            (0...index).each do |_i|
                temp = temp.next
            end
        else
            temp = @tail
            (index...@length-1).each do |_i|
                temp = temp.prev
            end
        end

        temp
    end

    def set_value(value, index)
        temp = get(index)

        if temp
            temp.value = value
        else
            false
        end
    end

    def insert(index, value)
        return if index >= @length || index.negative?

        return prepend(value) if index.zero?

        return append(value) if index == @length - 1

        new_node = Node.new(value)
        before = get(index -1)
        after = before.next

        new_node.prev = before
        new_node.next = after

        before.next = new_node
        after.prev = new_node

        @length += 1
        true
    end

    def remove(value, index)
        return if index.negative? || index >= @length

        return shift if index.zero?

        return pop if index = @length - 1

        temp = get(index)
        before = temp.prev
        next_node = temp.next

        before.next = next_node
        next_node.prev = before

        temp.next = nil
        temp.prev = nil

        @length -= 1
        temp
    end

    def reverse
        temp = @head
        
        while @head
            temp.next, temp.prev = temp.prev, temp.next
            temp = temp.prev
        end

        @head, @tail = @tail, @head
    end

    class Node
        att_accessor :value, :next, :prev

        def initialize(value)
            @value = value
            @next = nil
            @prev = nil
        end
    end
end