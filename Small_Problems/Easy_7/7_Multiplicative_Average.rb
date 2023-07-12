# Problem:
# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

# Test cases:
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# PEDAC

# any questions?

# input:
# array - array of integers

# output:
# string - "The result is #{avg}" - avg is rounded to 3 decimal places

# rules:
  # Explicit requirements:
  # assume the array is non-empty

  #Implicit requirements:
  # 

# Algorithm:
# - multiply all the elements in the array
# - create a product variable
# - arr.each { |el| product *= el }
# - divide the product by arr.length
# - print the quotient rounded to 3 decimal places

def show_multiplicative_average(arr)
  product = 1
  arr.each { |el| product *= el }
  avg = product.to_f / arr.length
  puts "The result is #{avg.round(3)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667