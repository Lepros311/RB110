# Problem:


# Test cases:


# input:
# 

# output:
#  

# rules:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# get the number of digits by using to_s.size and save to variable
# call .downto(2) on number of digits
# in the .downto block, call rotate_rightmost_digits(number, n) and save to number
# return number 

def rotate_array(array)
  new_array = array[1..-1] << array[0]
end

def rotate_rightmost_digits(num, n)
  num_as_array = num.to_s.chars.map { |digit| digit.to_i }
  num_as_array[-n..-1] = rotate_array(num_as_array[-n..-1])
  num_as_array.join.to_i
end

def max_rotation(num)
  number_of_digits = num.to_s.size
  number_of_digits.downto(2) { |n| num = rotate_rightmost_digits(num, n) }
  num
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845