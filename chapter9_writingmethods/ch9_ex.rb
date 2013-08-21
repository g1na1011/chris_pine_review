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