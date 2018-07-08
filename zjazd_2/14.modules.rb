class Player
  include Comparable

  attr_reader :score, :name

  def initialize(score, name)
    @score = score
  end

  def <=>(other)
    if @name == 'Edward'
      -1
    elsif other.name == 'Edward'
      1
    else
      @score <=> other.score
    end
  end
end

player_1 = Player.new(10, 'Adam')
player_2 = Player.new(12, 'Rysiek')
player_3 = Player.new(8, 'Czesław')
player_4 = Player.new(10, 'Edward')

# puts player_1 < player_2
# puts player_1 >= player_3
# puts player_1 != player_4

puts player_4 > player_2
puts player_2 < player_4
