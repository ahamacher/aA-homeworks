class Queue
  attr_accessor :line

  def initialize(array)
    @line = array
  end

  def enqueue(el)
    line << el
  end

  def dequeue
    line.shift
  end

  def peek
    line.first
  end

end