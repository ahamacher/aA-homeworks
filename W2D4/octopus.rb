ARR = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def on2
  stored = nil
  ARR.each do |ele1|
    ARR.each do |ele2|
      if ele1.length > ele2.length
        stored = ele1
      else
        stored = ele2
      end
    end
  end
  stored
end



class Array

  def bigie
    arr = self.merge_sort
    arr[-1]
  end

  def merge_sort(&prc)
    return [] if self.length == 0
    return self if self.length == 1
    mid = self.length / 2
    left = self[0...mid].merge_sort(&prc)
    right = self[mid..-1].merge_sort(&prc)
    Array.merge(left, right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    prc ||= Proc.new { |num1, num2| num1.length <=> num2.length }
    merged = []
    until left.empty? || right.empty?
      if prc.call(left[0], right[0]) == -1
        merged << left.shift
      else
        merged << right.shift
      end
    end
    merged += left + right
  end

end

def on
  held = ""
  ARR.each { |ele| held = ele if ele.length > held.length }
  held
end



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
new_tiles_data_structure = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7 }


def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |ele, i|
   return i if direction == ele 
  end
end

def fast_dance(direction, new_tiles_data_structure)
  new_tiles_data_structure[direction]
end
