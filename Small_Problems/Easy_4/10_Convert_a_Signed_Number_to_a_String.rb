# Problem:
# Write a method that takes an integer, and converts it to a string representation.

# Test cases:
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# PEDAC

# any questions?

# input:
# integer - positive or negative

# output:
# string - string representation of the input integer with its sign (if not 0)

# rules:
  # Explicit requirements:
  # You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

  #Implicit requirements:
  # even if the integer is positive and doesn't have a sign, include a + sign
  # zero gets no sign

# Algorithm:
# - call the original method inside of a new method
# - check if the number is less than or greater than 0 
# - prepend a sign accordingly

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  abs_num = number.abs
  loop do
    abs_num, remainder = abs_num.divmod(10)
    result.prepend(DIGITS[remainder])
    break if abs_num == 0
  end
  result
end

def signed_integer_to_string(number)
  stringed_number = integer_to_string(number)
  if number < 0
    stringed_number.prepend('-')
  elsif number > 0
    stringed_number.prepend('+')
  else
    stringed_number
  end
  # also could have done: case stringed_number <=> 0 
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'