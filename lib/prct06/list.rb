# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :next, :prev)

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
      @tail.next = node
      node.prev = @tail
    end
    @tail = node
    return self
  end

  def shift
    toReturn = @head
    @head = @head.next
    @head.prev = nil
    return toReturn
  end
end
