# Rite of Passage: Sorting
def sort(arr)
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select { |e| e < middle }
  more = arr.select { |e| e >= middle }

  sort(less) + [middle] + sort(more)
end

puts (sort(["can", "feel", "singing", "like", "a", "can"]).join(" "))
puts "---"

# Shuffle an array
def shuffle(arr)
  arr.sort_by{rand}
end

puts shuffle([1, 2, 3, 4, 5, 6, 7, 8, 9])
puts [1, 2, 3, 4, 5, 6, 7, 8, 9].shuffle # I would just use the shuffle method
puts "---"

# Dictionary Sort
def dictionary_sort(arr)
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select { |e| e.downcase < middle.downcase }
  more = arr.select { |e| e.downcase >= middle.downcase }

  sort(less) + [middle] + sort(more)
end

puts (sort(["can", "feel", "singing", "like", "A", "can"]).join(" "))

# Expanded English Number
def english_number(num)
  if num < 0
    puts "Please enter a non-negative number."
  end

  if num == 0
    puts "zero"
  end

  num_string = ""
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers  = ["eleven", "twelve", "thirteen", "fourteen",  "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  zillions = [["hundred",            2],
              ["thousand",           3],
              ["million",            6],
              ["billion",            9],
              ["trillion",          12],
              ["quadrillion",       15],
              ["quintillion",       18],
              ["sextillion",        21],
              ["septillion",        24],
              ["octillion",         27],
              ["nonillion",         30],
              ["decillion",         33],
              ["undecillion",       36],
              ["duodecillion",      39],
              ["tredecillion",      42],
              ["quattuordecillion", 45],
              ["quindecillion",     48],
              ["sexdecillion",      51],
              ["septendecillion",   54],
              ["octodecillion",     57],
              ["novemdecillion",    60],
              ["vigintillion",      63],
              ["googol",           100]]

  left = num

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10**zil_pair[1]
    write = left / zil_base
    left = left - write * zil_base

    if write > 0
      prefix = english_number(write)
      num_string = num_string + prefix + " " + zil_name
      if left > 0
        num_string = num_string + " "
      end
    end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out? 
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1] 
  end

  num_string
end

puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts "---"

# 99 Bottles of Beer
# english_number as above, plus this: num_at_start = 5 # change to 9999 if you want num_now = num_at_start
while num_now > 2
  puts english_number(num_now).capitalize + " bottles of beer on the wall, " + english_number(num_now) + " bottles of beer!"
  num_now = num_now - 1
  puts "Take one down, pass it around, " + english_number(num_now) + " bottles of beer on the wall!"
end
puts "Two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, one bottle of beer on the wall!"
puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"