# Problem:
# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

# Test cases:
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# PEDAC

# any questions?

# input:
# string

# output:
# integer - sum of the ASCII values of every character in the string

# rules:
  # Explicit requirements:
  # You may use String#ord to determine the ASCII value of a character

  #Implicit requirements:
  # empty strings will return 0

# Algorithm:
# - call the #chars method on the string to create an array of characters
# - iterate over the array
# - in each iteration, call String#ord on each character
# - save the return value to an updating sum: sum += char.ord
# - return the sum

def ascii_value(string)
  sum = 0
  string.chars.each do |char|
    sum += char.ord
  end
  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0