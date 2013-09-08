# Blocks and Procs
toast = Proc.new do
  puts "Cheers!"
end

toast.call
toast.call
toast.call

# Blocks can take parameters
do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}!"
end

do_you_like.call "chocolate"
do_you_like.call "Ruby"

# Control how and how many times we call Proc
def do_self_importantly(some_proc)
  puts "Everybody just HOLD ON! I'm doing something..."
  some_proc.call
  puts "OK everyone, I am done. As you were." 
end

say_hello = Proc.new do
  puts "hello"
end

say_goodbye = Proc.new do
  puts "goodbye"
end

do_self_importantly(say_hello)
do_self_importantly(say_goodbye)

# Determine how many times or whether to call a Proc
def maybe_do(some_proc)
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do(some_proc)
  some_proc.call
  some_proc.call
end

wink = Proc.new do
  puts "<wink>"
end

glance = Proc.new do
  puts "<glance>"
end

maybe_do(wink)
maybe_do(wink)
maybe_do(glance)
maybe_do(glance)
twice_do(wink)
twice_do(glance)

# Shows how a method depends on the procs passed into into
def do_until_false(first_input, some_proc)
  input = first_input
  output = first_input

  while output
    input = output
    output = some_proc.call(input)
  end

  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last

  if last_number <= 0
    false
  else
    array.pop
    array.push(last_number * last_number)
    array.push(last_number - 1)
  end
end

always_false = Proc.new do |just_ignore_me|
  false
end

puts do_until_false([5], build_array_of_squares).inspect

yum = "lemonade with a hint of orange blossom water"
puts do_until_false(yum, always_false)

# Methods that return procs
def compose(proc1, proc2)
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose(double_it, square_it)
square_then_double = compose(square_it, double_it)

puts double_then_square.call(5)
puts square_then_double.call(5)

# Passing blocks (not procs) into Methods
class Array
  def each_even(&was_a_block__now_a_proc)
    is_even = 0

    self.each do |object|
      if is_even
        was_a_block__now_a_proc.call(object)
      end

      is_even = !is_even
    end
  end
end

fruits = ["apple", "bad apple", "cherry", "durian"]
fruits.each_even do |fruit|
  puts "Yum! I just love #{fruit} pies, don't you?"
end

[1, 2, 3, 4, 5].each_even do |odd_ball|
  puts "#{odd_ball} is NOT an even number!" 
end