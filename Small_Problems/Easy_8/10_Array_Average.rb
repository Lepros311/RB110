# Problem:
# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

# Test cases:
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# input:
# array - of integers

# output:
# integer

# rules:
  # Explicit requirements:
  # Don't use the Array#sum method for your solution - see if you can solve this problem using iteration more directly.

  #Implicit requirements:
  # 

# Algorithm:
# - create a sum variable
# - create an index variable
# - loop through the array to sum the elements
# - update sum += arr[index]
# - sum / arr.length


def average(arr)
  index = 0
  sum = 0
  loop do 
    sum += arr[index]
    index += 1
    break if index == arr.length
  end
  sum / arr.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40