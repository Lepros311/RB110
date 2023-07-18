# Problem:
# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# Test cases:
# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

# input:
# 2 integers - first number is a count, second number is the start

# output:
# array - same number of elements as the count; each el is a multiple of start number

# rules:
  # Explicit requirements:
  # You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

  #Implicit requirements:
  # 

# Algorithm:
# - int1 will be the loop's break criteria
# - int2 will be the increment value
# - create an empty array
# - create a sum variable initalized to increment value
# - push the sum variable into the array
# - increment sum by increment value 
# - increment index by 1
# - break if index is equal to arr.length
# - return the array

def sequence(counter, increment)
  arr = Array.new(counter)
  return [] if counter == 0
  index = 0
  sum = increment
  loop do
    arr[index] = sum
    sum += increment
    index += 1
    break if index == arr.length
  end
  arr
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []