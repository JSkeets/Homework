require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14)
    self.place_stones
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups.each_with_index do |cup,i|
      if i == 13
        cups[i] = []
      elsif i == 6
       cups[i] = []
      else
       cups[i] = [:stone,:stone,:stone,:stone]
      end
    end
  end
  def InvalidStartingCup
  end
  def valid_move?(start_pos)
    if start_pos < 1 || start_pos > 13
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    numstones = self.cups[start_pos].length
    self.cups[start_pos] = []
    i = 1
    while numstones > 0
       if current_player_name == @name2 && start_pos + i == 6
         i += 1
       end
      if current_player_name == @name1 && start_pos +  i == 13
        i += 1
      end

      self.cups[start_pos+i] << :stone
      numstones -= 1
      i += 1
    end
    # self.render
    next_turn(start_pos + i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    return :switch if self.cups[ending_cup_idx].nil? 
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    i = 0
    while i < 6
      return false if self.cups[i].length > 0
      i += 1
    end
    j = 7
    while j < 13
      return false if self.cups[i].length > 0
      j += 1
    end
    true
  end


  def winner

    return :draw if self.cups[6].length == self.cups[13].length
    if self.cups[6].length > self.cups[13].length
      return @name1
    else
      return @name2
    end

  end


end
