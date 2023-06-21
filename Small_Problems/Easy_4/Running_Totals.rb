# Problem:
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# Definitions:
# A running total is the sum of all values in a list up to and including the current element. Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), while the running total at index 3 is 47 (14 + 11 + 7 + 15).

# Test cases:
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# input:
# an array of integers

# output:
# an array of integers

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # an array with one integer will return the same array
  # an empty array will return an empty array

# Algorithm:
# - add the first element to the second element
# - save the sum as the second element in the new array
# - take the previous sum and add it to the next element
# - save that sum as the next element in the new array
# - right now it's just adding adjacent elements, but not saving it to the second 

def running_total(arr)
  if arr.length == 0 || arr.length == 1
    return arr
  end
  newarr = []
  newarr << arr[0]
  counter = 0
  next_item = 1
  loop do
    sum = arr[counter] + arr[next_item]
    arr[next_item] = sum
    newarr << sum
    counter += 1
    next_item += 1
    break if counter == arr.length - 1
  end
  p newarr
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []