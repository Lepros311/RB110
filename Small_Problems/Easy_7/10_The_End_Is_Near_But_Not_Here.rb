# Problem:
# Write a method that returns the next to last word in the String passed to it as an argument.

# Test cases:
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# PEDAC

# any questions?

# input:
# string - with at least two words

# output:
# string - the next to last word in the argument string 

# rules:
  # Explicit requirements:
  # Words are any sequence of non-blank characters.
  # You may assume that the input String will always contain at least two words.

  #Implicit requirements:
  # 

# Algorithm:
# - find the last blank space in the string
# - return the substring between that and the second-to-last blank space or the beginning or the string
# - start at the end of the string and find the first blank space
# - then keep going until either the next blank space or the beginning of the string
# - turn the string into an array
# - select the next to last element
# - return that string

def penultimate(str)
  str.split[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'