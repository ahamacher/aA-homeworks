class Map
  attr_accessor :pairs

  def initialize(key = nil, value = nil)
    if key.nil? || value.nil?
      @pairs = Array.new
    else
      @pairs = [[key, value]]
    end
  end

  def set(key, value)
      pairs.each do |arr|
        if arr[0] == key
          return
        end
      end
      pairs << [key, value]
  end

  def get(key)
    pairs.each do |pair|
      if pair[0] == key
        return pair[1]
      end
    end
    nil
  end

  def delete(key)
    pairs.each do |pair|
      if pair[0] == key
        pairs.delete(pair)
      end
    end
  end

  def show
    pairs
  end

end