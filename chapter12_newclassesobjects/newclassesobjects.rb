# Time Class
time = Time.new # The moment we ran this code. 
time2 = time + 60 # One minute or 60 seconds later.

puts time
puts time2

puts Time.local(2000, 1, 1) # Y2K.
puts Time.local(1989, 10, 11, 5, 0) # When I was born.

puts Time.gm(1955, 11, 5, 0) # If you want to avoid time zones and daylight saving, just use GMT.

# Hash Class
dict_array = [] # array literal
dict_hash = {} # hash literal

dict_array[0] = "candle"
dict_array[1] = "glasses"
dict_array[2] = "truck"
dict_array[3] = "Alicia"
dict_hash["shia-a"] = "candle"
dict_hash["shaya"] = "glasses"
dict_hash["shasha"] = "truck"
dict_hash["sh-sha"] = "Alicia"

dict_array.each do |word|
  puts word
end

dict_hash.each do |c_word, word|
  puts "#{c_word}: #{word}"
end

# Range Class
letters = "a".."c" # range literal

puts (["a", "b", "c"] == letters.to_a) # converts range to array

# iterate over a range:
("A".."Z").each do |letter|
  print letter
end

god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min # 1970
puts god_bless_the_70s.max # 1979
puts(god_bless_the_70s.include?(1979)) # true
puts(god_bless_the_70s.include?(1980)) # false
puts(god_bless_the_70s.include?(1974.5)) # true

# More string methods
da_man = "Mr. T"
big_T = da_man[4]
puts big_T