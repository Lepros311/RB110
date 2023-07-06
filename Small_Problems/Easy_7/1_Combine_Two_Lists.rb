# Problem:
# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# Test cases:
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# PEDAC

# any questions?

# input:
# two arrays

# output:
# one array

# rules:
  # Explicit requirements:
  # You may assume that both input Arrays are non-empty, and that they have the same number of elements.

  #Implicit requirements:
  # 

# Algorithm:
# - create a new empty array
# - create index/counter variable and initialize to 0
# - start a loop
# - push arr1 element at index to the new array
# - push arr2 element at index to the new array
# - increment index/counter
# - break out of loop if index/counter == arr1.length
# - end loop/start new iteration
# - return the new array

def interleave(arr1, arr2)
  combined_arr = []
  index = 0
  loop do
    combined_arr << arr1[index]
    combined_arr << arr2[index]
    index += 1
    break if index == arr1.length
  end
  combined_arr
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']