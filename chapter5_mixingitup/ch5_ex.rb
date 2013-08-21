# This program greets the person with his/her full name.
puts "Hi, what is your first name?"
first_name = gets.chomp
puts "What about your middle name?"
middle_name = gets.chomp
puts "And your last name?"
last_name = gets.chomp

puts "Nice to meet you, #{first_name} #{middle_name} #{last_name}!"

# Bigger, better favorite number
puts "What's your favorite number?"
fav_num = gets.chomp.to_i
puts "I believe that #{fav_num + 1} is a bigger and better favorite number."