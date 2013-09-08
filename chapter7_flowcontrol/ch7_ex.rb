# 99 Bottles of Beer on the Wall
i = 99
while i >= 1
  if i == 1
    puts "#{i.to_s} bottle of beer on the wall, #{i.to_s} bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts ""
  elsif i == 0
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."    
    break
  else
    puts "#{i.to_s} bottles of beer on the wall, #{i.to_s} bottles of beer."
    puts "Take one down and pass it around, #{(i - 1).to_s} bottles of beer on the wall."
    puts "" 
  end
  i -= 1
end

# Deaf Grandma
something_to_grandma = ""
while something_to_grandma != "BYE"
  puts "Say something to G-ma."
  something_to_grandma = gets.chomp
  if something_to_grandma == "BYE"
    break 
  elsif something_to_grandma == something_to_grandma.upcase
    puts "NO, NOT SINCE #{(rand(1930..1950)).to_s}!"    
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end

# Deaf Grandma - Extended
something_to_grandma = ""
while something_to_grandma != "BYE, BYE, BYE"
  puts "Say something to G-ma."
  something_to_grandma = gets.chomp
  if something_to_grandma == "BYE, BYE, BYE"
    break 
  elsif something_to_grandma == something_to_grandma.upcase
    puts "NO, NOT SINCE #{(rand(1930..1950)).to_s}!"    
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end

# Leap years
puts "Give me a starting year."
start_yr = gets.chomp.to_i
puts "Give me an ending year."
end_yr = gets.chomp.to_i

puts ""

i = start_yr
while i <= end_yr
  if i % 4 == 0 
    if i % 100 != 0 || i % 400 == 0
      puts i.to_s
    end
  end 
  i += 1
end
