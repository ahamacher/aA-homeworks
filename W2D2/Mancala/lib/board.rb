require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14)
    @name1 = name1
    @name2 = name2
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups.map!.with_index do |ele, i|
      if i == 6 || i == 13
        ele = []
      else
        ele = [:stone, :stone, :stone, :stone]
      end
    end
  end

  def valid_move?(start_pos)
    if self.cups[start_pos] == []
      raise "Starting cup is empty"
    end
    if self.cups[start_pos].nil?
      raise "Invalid starting cup"
    end
    true
  end

  def make_move(start_pos, current_player_name)
    stones = cups[start_pos]
    cups[start_pos] = []

    cup_idx = start_pos

    until stones.empty?
      cup_idx += 1
      cup_idx = 0 if cup_idx > 13

      if cup_idx == 6
        cups[6] << stones.shift if current_player_name == @name1
      elsif cup_idx == 13
        cups[13] << stones.shift if current_player_name == @name2
      else
        cups[cup_idx] << stones.shift
      end

    end
      self.render
      self.next_turn(cup_idx)
  end

  def next_turn(ending_cup_idx)
    # debugger
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    end
    if cups[ending_cup_idx].length == 1
      return :switch
    else
      return ending_cup_idx
    end

    
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    if cups[0...6].all? { |cup| cup.empty? }
      return true
    elsif cups[7...13].all? { |cup| cup.empty? }
      return true
    end
    false
  end

  def winner
    if cups[6].length == cups[13].length
      return :draw
    end
    if cups[6].length > cups[13].length
      return @name1
    else
      return @name2
    end
  end
end
