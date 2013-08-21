var1 = 2
var2 = "5"
puts var1.to_s + var2

var1 = 2
var2 = "5"
puts var1.to_s + var2
puts var1 + var2.to_i

puts "15".to_f
puts "99.999".to_f
puts "99.999".to_i
puts ""
puts "5 is my favorite number!".to_i # Picks up 5, but ignores whatever else it does not understand.
puts "Who asked you about 5 or whatever?".to_i # Since the string started with letters, it ignores all other content.
puts "Your momma did.".to_f # Also results in 0.0 because it didn't start with a number.
puts ""
puts "stringy".to_s
puts 3.to_i

puts "Hello there, and what's your name?"
name = gets.chomp
puts "Your name is " + name +"? What a lovely name!"
puts "Pleased to meet you, " + name + ". :)"