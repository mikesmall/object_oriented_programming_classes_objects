# Adding "_arg" to arguments, just to keep track.
# I still get confused by different things having the same name.

class Cat
  def initialize(name_arg, preferred_food_arg, meal_time_arg)
    @name = name_arg
    @preferred_food = preferred_food_arg
    @meal_time = meal_time_arg
  end

  # Add an instance method called eats_at that returns
  # the hour of the day with AM or PM that this cat eats.
  # The return value should be something like "11 AM" or "3 PM"
  def eats_at

    if @meal_time <= 11
      puts "#{ @name } eats at #{ @meal_time }:00 AM."

    elsif @meal_time == 12
      puts "#{ @name } eats at #{ @meal_time }:00 PM."

    elsif @meal_time >= 13
      puts "#{ @name } eats at #{ @meal_time - 12 }:00 PM."

    end
  end

  # Add another instance method called meow that returns
  # a string of the cat telling you all about itself.
  # The return value should be something like "My name
  # is Sparkles and I eat tuna at 11 AM"
  def meow
      puts "My name is #{ @name }. I eat #{ @preferred_food } at #{ eats_at }"
  end
end

# Create two instances of the Cat class in your file
# They should each have unique names, preferred foods and meal times
# Let's assume meal_time is an integer from 0 to 23
mavis = Cat.new('Mavis', 'potato chips', 9)
batman = Cat.new('Batman', 'canned tuna', 17)

mavis.eats_at
mavis.meow
