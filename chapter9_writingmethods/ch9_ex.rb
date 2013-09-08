# Improved "ask" method
def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase

    if reply == "yes" 
      return true
    elsif reply == "no"
      return false
    else
      puts "Please answer with a \"yes\" or \"no\"." 
    end

  end
end

likes_it = ask("Do you smell?")
puts likes_it

# Old-school Roman numerals
def old_school_roman(num)
  os_roman = ""

  os_roman = os_roman + "M" * (num / 1000)  
  os_roman = os_roman + "D" * ((num % 1000) / 500)
  os_roman = os_roman + "C" * ((num % 500) / 100)
  os_roman = os_roman + "L" * ((num % 100) / 50)
  os_roman = os_roman + "X" * ((num % 50) / 10)
  os_roman = os_roman + "V" * ((num % 10) / 5)
  os_roman = os_roman + "I" * ((num % 5) / 1)
end

puts
puts old_school_roman(50)
puts old_school_roman(2999)
puts old_school_roman(865)
puts old_school_roman(358)

# Modern Roman numerals
def modern_roman(num)
  roman = ""

  thousand = (num / 1000)
  hundred = ((num % 1000) / 100)
  ten = ((num % 100) / 10)
  one = ((num % 10) / 1)

  roman = "M" * thousand

  if hundred == 9
    roman = roman + "CM"
  elsif hundred == 4
    roman = roman + "CD"
  else
    roman = roman + "D" * ((num % 1000) / 500)
    roman = roman + "C" * ((num % 500) / 100)
  end

  if ten == 9
    roman = roman + "XC"
  elsif ten == 4
    roman = roman + "XL"
  else
    roman = roman + "L" * ((num % 100) / 50)
    roman = roman + "X" * ((num % 50) / 10)
  end

  if one == 9
    roman = roman + "IX"
  elsif one == 4
    roman = roman + "IV"
  else
    roman = roman + "V" * ((num % 10) / 5)
    roman = roman + "I" * ((num % 5) / 1)
  end
end

puts
puts modern_roman(3984)
puts modern_roman(3514)
puts modern_roman(243)
puts modern_roman(999)