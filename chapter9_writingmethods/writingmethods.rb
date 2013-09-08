# The Moo Method
def say_moo(num_of_moos)
  puts "moooooooo..." * num_of_moos
end

say_moo(3)
puts "oink-oink"

# Double-this Method
def double_this(num)
  num_times_2 = num * 2
  puts "#{num} doubled is #{num_times_2}"
end

double_this(11)

# Return Values
def say_moo_again(number_of_moos)
  puts "mooooo..." * number_of_moos
  "yellow submarine"
end

x = say_moo_again(3)
puts x.capitalize + ", dude..." # Only returns "Yellow submarine, dude..."
puts x # Only returns "yellow submarine"

# Using explicit "return" vs. not using them explicitly
def favorite_food(name)
  if name == "Lister"
    return "vindaloo"
  end
  if name == "Rimmer"
    return "mashed potatoes"
  end

  "hard to say...maybe fried plantain?"
end

def favorite_drink(name)
  if name == "Jean-Luc"
    "tea, Earl Grey, hot"
  elsif name == "Kathryn"
    "coffee, black"
  else
    "perhaps...horchata?"
  end
end

puts favorite_food("Rimmer")
puts favorite_food("Lister")
puts favorite_food("Cher")
puts favorite_drink("Kathryn")
puts favorite_drink("Oprah")
puts favorite_drink("Jean-Luc")

# Rewriting the psychological project program
def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == "yes" || reply == "no")
      if reply == "yes"
        answer = true
      else 
        answer = false
      end
      break
    else
      puts "Please answer \"yes\" or \"no\"." 
    end
  end

  answer # This is what we return - true or false.
end

puts "Hello, and thank you for..."
puts

ask("Do you like eating tacos?") # Ignore this return value
ask("Do you like eating burritos?") # And this one
wets_bed = ask("Do you wet the bed?") # But we save this return value just because
ask("Do you like eating chimichangas?")
ask("Do you like eating sopapillas?")
puts "Just a few more questions.."
ask("Do you like drinking horchata?")
ask("Do you like eating flautas?")

puts
puts "DEBRIEFING:"
puts wets_bed
