# Problem:
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# Test cases:
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# PEDAC

# any questions?

# input:
# integer greater than 1

# output:
# integer - the sum of all multiples between 1 and the given number (inclusive)

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - divide the integer by 3
# - divide the integer by 5
# - create a loop with the quotient as the break condition
# - for the 3 loop, add 3 each iteration and sum
# - for the 5 loop, add 5 each iteration and sum
# - add the two sums from each loop

def multisum(int)
  mult3 = int / 3
  mult5 = int / 5

  counter3 = 0
  counter5 = 0
  adder3 = 0
  adder5 = 0
  sum3 = 0
  sum5 = 0
  
  if int > 2
    loop do
      adder3 += 3
      sum3 += adder3
      counter3 += 1
      break if counter3 == mult3
    end
  end
  if int > 4
    loop do
      adder5 += 5
      break if counter5 == mult5
      counter5 += 1
      next if adder5 % 15 == 0
      sum5 += adder5
    end
  end
  sum3 + sum5
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168