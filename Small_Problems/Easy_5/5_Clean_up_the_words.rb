# Problem:
# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces.

# Test cases:
# cleanup("---what's my +*& line?") == ' what s my line '

# PEDAC

# any questions?

# input:
# string

# output:
# string

# rules:
  # Explicit requirements:
  #  If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

  #Implicit requirements:
  # 

# Algorithm:
# - 

def cleanup(str)
  str.gsub!(/[^a-z]/,' ')
end

puts cleanup("---what's my +*& line?")
puts cleanup("---what's my +*& line?") == ' what s my line '