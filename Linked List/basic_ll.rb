class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
  end

  def addition(value)
    current_node = @head

    while current_node.next_node != nil
      current_node = current_node.next_node
    end

    current_node.next_node = Node.new(value, nil)
  end

  def delete_node(value)
    current_node = @head

    if current_node.value == value
      @head = current_node.next_node
    else
      
    end
  end

  def find(value)

  end

  def print_list

  end
end