# Problem:
# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument.

# Test cases:
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# PEDAC

# any questions?

# input:
# integer - the number of digits 

# output:
# integer - the index number for the first number that has the given number of digits

# rules:
  # Explicit requirements:
  # start the index at 1

  #Implicit requirements:
  # 

# Algorithm:
# - use .length to determine the number of digits for each fib #
# - create an array to fill with each fib #
# - start the array with two elements, 1 and 1
# - add those two together and add the sum to the array
# - add that sum and the previous element
# - add the new sum to the array
# - add that sum and the previous element
# - add the new sum to the array
# - use .to_s.length to check the number of digits for each sum
# - loop until fib_nums.last.length == digits
# - keep adding and pushing until

def find_fibonacci_index_by_length(digits)
  fib_nums = [1, 1]
  counter = 0
  loop do
    fib_nums.push(fib_nums.last + fib_nums[counter])
    break if fib_nums.last.to_s.length == digits
    counter += 1
  end
  fib_nums.length
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847