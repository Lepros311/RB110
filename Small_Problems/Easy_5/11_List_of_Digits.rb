# Problem:
# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Test cases:
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# PEDAC

# any questions?

# input:
# integer - a positive integer

# output:
# array - a list of the individual digits in the number

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - use #to_s to convert the integer to a string
# - use #chars to convert the string to an array
# - transform that array into an array of integers of the same numeric value

def digit_list(int)
  int.to_s.chars.map { |digit| digit.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true