# Class example
class Integer
  def to_eng
    if self == 5
      english = "five"
    else
      english = "forty-two"
    end

    english
  end
end

puts 5.to_eng
puts 42.to_eng

# Making Die class
class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end
end

# Making a couple of dice.
dice = [Die.new, Die.new]

# Rolling the dice.
dice.each do |die|
  puts die.roll
end