# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :nex, :prev)

class Node
  include Comparable
  def <=>(anOther)
    if anOther.is_a?(Node)
      value <=> anOther.value
    else
      value <=> anOther
    end
  end
  def to_s
    to_return = "(Value: #{value})"
  end
end

class List
  include Enumerable
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

  def to_array
    resultArray = []
    current = @head
    while current != nil do
      resultArray << current
      current = current.nex
    end
    return resultArray
  end

  def each(&block)
    to_array.each(&block)  
  end
end

#trying things

list = List.new()
list.add(2)
list.add(6)
list.add(9)
puts list.to_array
#list.each{|node| node.value > 2}
#node1 = Node.new(14, nil, nil)
#node2 = Node.new(3, node1, node1)
#puts node2.to_s 
