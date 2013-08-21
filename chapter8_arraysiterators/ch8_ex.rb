# Building and sorting an array
puts "Type one word per line...as much as you want:"
words_array = []

while true
  word = gets.chomp
  words_array.push(word)
  if word.empty?
  	break
  end
end

puts words_array.sort

# Table of Contents (revisited)
puts "Table of Contents".center(55)

tableofcontents = [
  [1, "Getting Started", 1], 
  [2, "Numbers", 9], 
  [3, "Letters", 13]
]

tableofcontents.each do |ch, title, page|
  puts "Chapter #{ch}: #{title}".ljust(30) + "page ".rjust(20) + "#{page}"
end