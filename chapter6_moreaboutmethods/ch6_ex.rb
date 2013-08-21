# This program provides the total number of letters in a full name.
puts "What's your first name?"
f_name = gets.chomp
puts "What about your middle name?"
m_name = gets.chomp
puts "And your last name?"
l_name = gets.chomp

full_length = f_name.length + m_name.length + l_name.length

puts "Your name has a total of #{full_length.to_s} letters."

# Angry boss program - your boss yells back at you and fires you.
puts "What do you want, kid?"
request = gets.chomp
puts "YOU CRAZY?? #{request.upcase}???! YOU'RE FIRED!"

# Table of contents
title_width = 50
puts ("Table of Contents".center(title_width))
puts ""
contents_width = 25
puts ("Chapter 1:  Getting Started".ljust(contents_width)) + ("page  1".rjust(contents_width))
puts ("Chapter 2:  Numbers        ".ljust(contents_width)) + ("page  9".rjust(contents_width))
puts ("Chapter 3:  Letters        ".ljust(contents_width)) + ("page 13".rjust(contents_width))