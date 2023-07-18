# Problem:
# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# Test cases:
# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]

# input:
# integer

# output:
# array - all integers in sequence leading up to the given integer

# rules:
  # Explicit requirements:
  # You may assume that the argument will always be a valid integer that is greater than 0.

  #Implicit requirements:
  # 

# Algorithm:
# - create a loop that uses the int value as the break criteria
# - create a counter variable
# - create empty array
# - start loop
# - push the counter variable value into the array
# - increment the counter variable
# - break if counter is higher than int
# - return the array

def sequence(int)
  arr = []
  counter = 1
  loop do
    arr << counter
    counter += 1
    break if counter > int
  end
  arr
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]