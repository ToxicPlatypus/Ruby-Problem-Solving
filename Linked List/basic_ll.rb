class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def add_first(data)
    @head = Node.new(data, @head)
  end

  def add_last(data)
    node = Node.new(number)
    if !@head
      @head = node
      @tail = node
      return
    end
    last_node = get_last()
    last_node.next_node = node
    @tail = node
  end

  private

  def get_last
    return if !@head
    node = @head

    until node.next_node.nil?
      node = node.next_node
    end

    return node
  end
end

list= LinkedList.new
puts list