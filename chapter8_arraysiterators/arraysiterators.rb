[]
[5]
["Hello", "Goodbye"]

flavor = "vanilla" # Not an array
[89.9, flavor, [true, false]] # This is an array though

names = ["Ada", "Belle", "Chris"]
puts names
puts
puts names[0]
puts names[1]
puts names[2]
puts names[3] # This is out of range

# Assigning array variables
other_peeps = []
other_peeps[3] = "beebee Meaner"
other_peeps[0] = "Ah-ha"
other_peeps[1] = "Seedee"
other_peeps[0] = "beebee Ah-ha"
puts other_peeps

languages = ["English", "Norwegian", "Ruby"]
languages.each do |lang|
  puts "I love #{lang}!"
  puts "Don't you?"
end
puts "And let's hear it from Java!"
puts "<crickets chirp in the distance>"

# This is not an array method (it's an integer method), but it's another iterator
3.times do
  puts "Hip-Hip-Hooray!"
end

2.times do
  puts "...you can say that again..."
end

# Join - array method
foods = ["artichoke", "brioche", "caramel"]
puts foods
puts
puts foods.to_s
puts
puts foods.join(", ")
puts 
puts foods.join(" :) ") + " 8)"

# Puts only will puts the object(s) within the array - in this case, the array is empty
200.times do
  puts []
end

# Push, pop, last
favorites = []
favorites.push "raindrops on roses"
favorites.push "whiskey on kittens"

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length