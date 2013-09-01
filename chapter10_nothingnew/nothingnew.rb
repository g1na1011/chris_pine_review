# Recursively writing the pysch program from Chapter 9.
def ask_recursively(question)
  puts question
  reply = gets.chomp.downcase

  if reply == "yes"
    true
  elsif reply == "no"
    false
  else
    puts "Please answer \"yes\" or \"no\"."
    ask_recursively(question) # This is the magic line.
  end
end

ask_recursively("Do you went your bed?")

# Computing factorials with recursion
def factorial(num)
  if num < 0
    return "You can't take the factorial of a negative number!"
  end

  if num <= 1
    1
  else
    num * factorial(num - 1)
  end
end

puts factorial(3)
puts factorial(30)