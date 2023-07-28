# Problem:
# Write a method that takes a positive integer or zero, and converts it to a string representation.

# Test cases:
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# PEDAC

# any questions?

# input:
# integer - 0 or greater

# output:
# string - string representation of the integer

# rules:
  # Explicit requirements:
  # You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

  #Implicit requirements:
  # 

# Algorithm:
# - start by initializing a constant array to hold the string values of each digit
# - initialize a result variable to an empty string
# - being a loop
# - divide the number by 10
  # - save the quotient integer to number var; save the quotient remainder to a new var; save them both at the same time using .divmod
# - reference the string digit by using the remainder value and prepend it to the result string
# - For example: 236: 236 / 10 = 23 r6 '6', then 23 / 10 = 2 r3 '36', then 2 / 10 = 0 r2 '236'
# - break when number equals 0
# - return the result string



def integer_to_string(number)

end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'