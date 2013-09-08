# One billion seconds!
puts (Time.gm(1989, 10, 11, 5, 0) + 10**9)

# Happy Birthday!
puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in? (1-12)"
month = gets.chomp.to_i

puts "What day were you born in?"
day = gets.chomp.to_i

birthday = Time.gm(year, month, day)
time = Time.new

age = 1

while Time.gm(year + age, month, day) <= time
  puts "SPANK!"
  age += 1
end

# Party like a Roman
def roman_to_integer(roman) 
  digit_vals = {"i" => 1, "v" => 5, "x" => 10, "l" => 50, "c" => 100, "d" => 500, "m" => 1000}
 
  total = 0
  prev = 0
  roman.reverse.each_char do |c_or_C|
    c = c_or_C.downcase 
    val = digit_vals[c] 
    if !val
     puts 'This is not a valid roman numeral!'
     return 
    end
    if val < prev 
     val *= -1
    else
     prev = val
    end
    total += val
  end

  total
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))