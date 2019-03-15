class Stack
  attr_accessor :order

  def initialize(order)
    @order = order
  end

  def push(el)
    order << el
  end

  def pop
    # removes one element from the stack
    self.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    order.last
  end

end