# Problem:
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Test cases:
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# input:
# integer

# output:
# integer

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - let's use each
# - int2..int2.each 

def fizzbuzz(int1, int2)
  (int1..int2).each do |int|
    if int % 3 == 0 && int % 5 == 0
      puts 'FizzBuzz'
    elsif int % 3 == 0
      puts 'Fizz'
    elsif int % 5 == 0
      puts 'Buzz'
    else 
      puts int
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz