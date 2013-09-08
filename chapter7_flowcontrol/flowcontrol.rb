puts 1 > 2
puts 1 < 2

puts 5 >= 5
puts 5 <= 4

puts 1 == 1
puts 2 != 1

# Lexicographical ordering - based off a dictionary
puts "cat" < "dog"
puts "bug lady" < "Xander"
puts "bug lady".downcase < "Xander.downcase"

# Differences between strings and integers
puts 2 < 10
puts "2" < "10" # --> false; "2" is > "1"
puts "2" > "13" # --> true; "2" is > than "1"

# Branching
puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, #{name}."

if name == "Chris"
  puts "What a lovely name!"
end

# If, else
puts "I am fortune-teller. Tell me your name:"
name2 = gets.chomp

if name2 == "Gina"
  puts "I see great things in your future."
else
  puts "Your future is...oh my! Look at the time!"
  puts "I really have to go, sorry!"
end

# Deeper branching
puts "Hello, and welcome to seventh grade English."
puts "My name is Mrs. Gabbard. And your name is...?"
name3 = gets.chomp

if name3 == name.capitalize
  puts "Please take a seat, #{name3}"
else
  puts "#{name3}? You mean #{name3.capitalize} right?"
  puts "Don't you know how to spell your name?"
  reply = gets.chomp
  if reply.downcase == "yes"
    puts "Hmmph! Well, sit down!"
  else
    puts "GET OUT!"
  end
end

# Looping
input = ""
while input != "bye"
  puts input
  input = gets.chomp
end
puts "Come again soon!"

while true
  input = gets.chomp
  puts input
  if input == "bye"
    break
  end
end
puts "Come again soon!"

# Elsif
puts "Hello, what's your name?"
name4 = gets.chomp
puts "Hello, #{name4}."

if name4 == "Chris" || name4 == "Katy"
  puts "What a lovely name!"
end

# Another Loop
while true
  puts "What would you like to ask C to do?"
  request = gets.chomp

  puts "You say, \"C, please #{request}\""

  puts "C's response:"
  puts "C #{request}."
  puts "Papa #{request}, too."
  puts "Mama #{request}, too."
  puts "Ruby #{request}, too."
  puts "Nono #{request}, too."
  puts "Emma #{request}, too."

  if request == "stop"
    break
  end
end
