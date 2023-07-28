# Problem:
# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the standard conversion methods (String#to_i, Integer(), etc).

# Test cases:
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# PEDAC

# any questions?

# input:
# string - a string of digits

# output:
# integer - the same digits that were input

# rules:
  # Explicit requirements:
  # Cannot use any conversion methods
  # assume all characters will be numeric

  #Implicit requirements:
  # Don't worry about accounting for empty strings

# Algorithm:
# - first, let's create a hash of str/int pairs to retrieve each of the ints
# - in the method, retrieve each int using the hash and save all to a new array
  # - create an array of chars from the string
  # - transform that string array to a int array
    # - string.chars.map { |char| DIGITS[char]}
    # - save the new array of ints to a variable
# - initialize a value variable to 0
# - iterate over the ints array, updating the value var with its value * 10 + digit
  # - [4, 3, 1] becomes 4 (10 * 0 + 4), then 43 (10 * 4 + 3), then 431 (10 * 43 + 1)
# - return value var



def string_to_integer(string)

end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570