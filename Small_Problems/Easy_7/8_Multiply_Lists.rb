# Problem:
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# Test cases:
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# PEDAC

# any questions?

# input:
# 2 arrays, each having the same # of integers

# output:
#  array - a new array containing the product of each integer at the same index

# rules:
  # Explicit requirements:
  # assume the arrays contain the same # of elements

  #Implicit requirements:
  # 

# Algorithm:
# - create a new array, arr3
# - arr1.each_with_index { |int, index| arr3 << int * arr2[index] }
# - return arr3

def multiply_list(arr1, arr2)
  arr3 = []
  arr1.each_with_index { |int, index| arr3 << int * arr2[index] }
  arr3
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]