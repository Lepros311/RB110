# Problem:
# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# Test cases:
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# PEDAC

# any questions?

# input:
# 2 arrays - each containing integers

# output:
# array - a new array containing the product of every pair possible, sorted asc.

# rules:
  # Explicit requirements:
  # You may assume that neither argument is an empty Array.

  #Implicit requirements:
  # 

# Algorithm:
# - create a new array, arr3
# - create counter/index variable for arr1/outerloop
# - start outer loop
# - while index < arr1.length
# - start inner loop
# - 

def multiply_all_pairs(arr1, arr2)
  arr3 = []
  index_arr1 = 0
  for i in arr1 do
    index_arr2 = 0
    loop do
      arr3 << arr1[index_arr1] * arr2[index_arr2]
      index_arr2 += 1
      break if index_arr2 == arr2.length
    end
    index_arr1 += 1
    break if index_arr1 == arr1.length
  end
  arr3.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]