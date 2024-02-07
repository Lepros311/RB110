# Problem:
# Write a method that takes a positive integer as an argument and returns true if the number is prime, false if it is not prime.

# Test cases:
# puts(is_prime(1) == false)              # true
# puts(is_prime(2) == true)               # true
# puts(is_prime(3) == true)               # true
# puts(is_prime(4) == false)              # true
# puts(is_prime(5) == true)               # true
# puts(is_prime(6) == false)              # true
# puts(is_prime(7) == true)               # true
# puts(is_prime(8) == false)              # true
# puts(is_prime(9) == false)              # true
# puts(is_prime(10) == false)             # true
# puts(is_prime(23) == true)              # true
# puts(is_prime(24) == false)             # true
# puts(is_prime(997) == true)             # true
# puts(is_prime(998) == false)            # true
# puts(is_prime(3_297_061) == true)       # true
# puts(is_prime(23_297_061) == false)     # true

# input:
# positive integer

# output:
# boolean (true or false)

# rules:
  # You may not use Ruby's Prime class to solve this problem. Your task is to programmatically determine whether a number is prime without relying on any methods that already do that for you.

  #Implicit requirements:
  # A prime number is a positive number that is evenly divisible only by itself and 1. Thus, 23 is prime since its only divisors are 1 and 23. However, 24 is not prime since it has divisors of 1, 2, 3, 4, 6, 8, 12, and 24. Note that the number 1 is not prime.

# Algorithm:
# prime means that # % anything other than itself and 1 would be ! 0 
# divisor = 1
# loop do 

def is_prime(num)
  return false if num == 1
  2.upto(10) do |i| 
    next if i == num
    if num % i == 0 
      return false
    end
  end
  true
end


puts(is_prime(1) == false)              # true
puts(is_prime(2) == true)               # true
puts(is_prime(3) == true)               # true
puts(is_prime(4) == false)              # true
puts(is_prime(5) == true)               # true
puts(is_prime(6) == false)              # true
puts(is_prime(7) == true)               # true
puts(is_prime(8) == false)              # true
puts(is_prime(9) == false)              # true
puts(is_prime(10) == false)             # true
puts(is_prime(23) == true)              # true
puts(is_prime(24) == false)             # true
puts(is_prime(997) == true)             # true
puts(is_prime(998) == false)            # true
puts(is_prime(3_297_061) == true)       # true
puts(is_prime(23_297_061) == false)     # true