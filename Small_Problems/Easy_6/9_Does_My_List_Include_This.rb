# Problem:
# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

# Test cases:
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# PEDAC

# any questions?

# input:
# array
# search value

# output:
# true/false

# rules:
  # Explicit requirements:
  # You may not use the Array#include? method in your solution.

  #Implicit requirements:
  # 

# Algorithm:
# - use .find and use the search value as the argument

def include?(arr, search)
  return false if arr.length == 0
  find_result = arr.find { |element| element == search }
  search == find_result
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false