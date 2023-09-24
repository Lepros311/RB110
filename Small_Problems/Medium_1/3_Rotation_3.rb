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
# 

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num, n)
  array_of_num = num.to_s.split('').map { |digit| digit.to_i }
  array_of_num[-n..-1] = rotate_array(array_of_num[-n..-1])
  array_of_num.join.to_i 
end

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number 
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845