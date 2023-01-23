
class Players
  attr_accessor :lives, :name

  def initialize(name)
    @lives = 3
    @name = name
  end

  def lostLife
    @lives -= 1
  end

  def youDead
    @lives == 0
  end

end

# player1 = Players.new(@lives, "David")

# puts player1.lives

# puts player1.name

