# Problem:
# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Test cases:
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# input:
# integer

# output:
# integer

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# Algorithm:
# - turn the integer into an array (first turn it into a string)
# - use .reduce to add each array element

def sum(int)
  int.to_s.chars.map { |el| el.to_i }.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45