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
end
