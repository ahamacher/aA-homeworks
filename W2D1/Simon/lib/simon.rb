class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over == true
    take_turn
    end
    game_over_message
    self.reset_game
  end

  def take_turn
    if game_over == false
    show_sequence
    require_sequence
    round_success_message
    # add_random_color
    # sequence_length += 1
    end

    
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    # p "enter the sequence: "
    # input = gets.chomp
    # if input != seq
    #   game_over = true
    # end

  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    p "sucess!"
  end

  def game_over_message
    p "whoops! that wasnt right"
  end

  def reset_game
    sequence_length = 1
    seq = []
    game_over = false
  end
end
