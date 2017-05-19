# Appending "_arg" to argument names, to differentiate.

class Player

  def initialize(lives_arg, gold_coins_arg, health_points_arg)
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

# instance method called level_up that increases lives by one.

  def level_up
    @lives = @lives += 1
    puts "You got a life! Now you have #{ @lives } lives."
  end #level_up

end #Player

# Test output:
mike = Player.new(5, 0, 10)
mike.level_up

# instance method called collect_treasure that increases gold_coins by one. If gold_coins is a multiple of ten (eg, 10, 20, 30, and so on) then the collect_treasure method should run the level_up method.

# Your class should have an instance method called do_battle that accepts one damage argument and subtracts it from the player's health_points. If health_points falls below one, subtract one from lives and reset health_points to ten. If you have run out of lives, this method should run another method called restart (see below).

# The restart instance method should set all attributes back to their starting values (5, 0, and 10).