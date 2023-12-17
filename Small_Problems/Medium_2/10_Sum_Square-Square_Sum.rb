# Problem:
# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# Test cases:
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# input:
# integer

# output:
# integer

# rules:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# sum all the digits up to and including the given integer
# square the sum and save to variable
# create an array of all the digits up to and including the given integer
# square all the elements in that array
# use .reduce to sum all the elements in that array and save to variable
# subtract one variable from the other and return the difference

def sum_square_difference(int)
  sum_first_array = []
  1.upto(int) do |digit|
    sum_first_array << digit
  end
  sum_first_total = sum_first_array.reduce(:+)
  sum_first_total_squared = sum_first_total ** 2
  square_first_array = []
  1.upto(int) do |digit|
    square_first_array << (digit ** 2)
  end
  square_first_total = square_first_array.reduce(:+)
  sum_first_total_squared - square_first_total
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150






































# LS solution:

# def sum_square_difference(n)
#   sum = 0
#   sum_of_squares = 0

#   1.upto(n) do |value|
#     sum += value
#     sum_of_squares += value**2
#   end

#   sum**2 - sum_of_squares
# end

# Discussion:

# The hardest part of this exercise is just figuring out what is meant by square of the sum and sum of the squares. Our first example demonstrates this clearly with a comment that shows how we arrive at the answer.

# The primary solution shows all of the details of this operation; we loop through all of the integers between 1 and n, and compute the sum and sum of squares as we go. At the end, we subtract the sum of the squares from the square of the sum.