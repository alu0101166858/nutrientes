# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :nex, :prev)

class Node
  def to_s
    to_return = "[Value: #{value}]"
  end
end

class List
  def initialize
    @head = nil
    @tail = nil
  end
  
  def head
    @head
  end
  def tail
    @tail
  end

  def add(value)
    node = Node.new(value, nil, nil)
    if @head == nil
      @head = node
    end
    if @tail != nil
      @tail.nex = node
      node.prev = @tail
    end
    @tail = node
    return self
  end

  def shift
    if @head != nil
      if @head.nex != nil
        toReturn = @head
        @head = @head.nex
        @head.prev = nil
        return toReturn
      else
        lastElement = @head
        @head = nil
        return lastElement
      end
    else
      return "List is empty"
    end
  end

  def pop
    if @tail != nil
      if @tail.prev != nil
        toReturn = @tail
        @tail = @tail.prev
        @tail.nex = nil
        return toReturn
      else
        lastElement = @tail
        @tail = nil
        return lastElement
      end
    else
      return "List is empty" 
    end
  end
end

#trying things
list = List.new()
list.add(2)
list.add(6)
list.add(9)
puts list.shift
puts list.shift
puts list.shift
puts list.shift

#node1 = Node.new(14, nil, nil)
#node2 = Node.new(3, node1, node1)
#puts node2.to_s 
