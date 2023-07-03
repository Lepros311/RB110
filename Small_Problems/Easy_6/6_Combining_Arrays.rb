# Problem:
# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# Test cases:
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# PEDAC

# any questions?

# input:
# two arrays

# output:
# one array - with no duplicate values

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - throw all of the elements of each array into a new array
# - use .each on both arrays; on each iteration, << each element into the new array
# - run .uniq on that new array
# - return the new array

def merge(arr1, arr2)
  combined_arr = []
  arr1.each { |element| combined_arr << element }
  arr2.each { |element| combined_arr << element }
  combined_arr.uniq 
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]