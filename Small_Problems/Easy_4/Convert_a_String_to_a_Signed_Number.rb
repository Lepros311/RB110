# Problem:
# Write a method that takes a String of digits, and returns the appropriate number as an integer.

# Test cases:
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# PEDAC

# any questions?

# input:
# string - digits with or without a sign

# output:
# integer - with possiblity for negative numbers

# rules:
  # Explicit requirements:
  # The String may have a leading + or - sign
  # if the first character is a +, your method should return a positive number
  # if it is a -, your method should return a negative number.
  # If no sign is given, you should return a positive number 
  # You may assume the string will always contain a valid number.
  # You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
  # You may, however, use the string_to_integer method from the previous lesson.

  #Implicit requirements:
  # 

# Algorithm:
# - convert the string to an array of characters
# - look at the first element in the array
# - if the first element is a +, remove it and carry on
# - if the first element is a digit, do nothing and carry on
# - if the first element is a -, multiply the end value by -1

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  if string[0] == '-' || string[0] == '+'
    digits_only = string.delete(string[0]).chars.map { |char| DIGITS[char] }
  else
    digits_only = string.chars.map { |char| DIGITS[char] }
  end
  value = 0
  digits_only.each do |digit| 
    value = 10 * value + digit 
  end
  if string[0].match?(/[[:digit:]]/) || string[0] == '+'
    value
  else 
    value * -1
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100