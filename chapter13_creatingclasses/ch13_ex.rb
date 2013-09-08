# Extend the built-in classes
class Array
  def shuffle
    sort_by{rand}
  end
end

class Integer
  def factorial
    raise "Must use non-negative integer" if self < 0
    if self <= 1 
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    roman = ""
    roman = roman + "M" * (self / 1000) 
    roman = roman + "D" * (self % 1000 / 500) 
    roman = roman + "C" * (self % 500 / 100) 
    roman = roman + "L" * (self % 100 / 50) 
    roman = roman + "X" * (self % 50 / 10) 
    roman = roman + "V" * (self % 10 / 5) 
    roman = roman + "I" * (self % 5 / 1)
    roman
  end
end

# Baby Dragon
class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # Doesn't need to go.

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk 
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores."
      end
    end  
  end

  def toss
    puts "You toss #{@name} up in the air."
    passage_of_time
  end

  def rock
    puts "Rocking #{@name} to sleep."
    @asleep = true
    passage_of_time 
    if @asleep
      @asleep = false
      puts "...but he wakes when you stop."
    end
  end

  private
  # "private" means that the methods defined here are methods internal to the object. 
  # (You can feed your dragon, but you can't ask him whether he's hungry.)
  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # Dragon is starving!
      if @asleep
        @asleep = false
        puts "Dragon wakes up suddenly!"
      end
      puts "#{@name} is starving! He accidentally eats you..."
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!" 
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed

# Orange Tree
class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height
    else
      "Sadly, the tree is no longer here. :("
    end
  end

  def count_oranges
    if @alive
      @orange_count
    else
      "Sadly, the tree is dead."
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 2
      @orange_count = 0

      if @height > 10 && rand(2) > 0
        # tree dies
        @alive = false
        "Oh no..."
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
      end
    else
      "A year later, the tree is dead."
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        "You pick a juicy, delicious orange!" 
      else
        "You search every branch, but find no oranges." 
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end
end

ot = OrangeTree.new 
23.times do
  ot.one_year_passes
end

puts(ot.one_year_passes)
puts(ot.count_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_oranges)
puts(ot.pick_an_orange)
