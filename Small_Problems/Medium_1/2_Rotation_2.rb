# Problem:
# Write a method that can rotate the last n digits of a number. 

# Test cases:
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# input:
# integer

# output:
#  integer

# rules:
  # takes two arguments
  # the second argument is how many digits from the right to identify which digit to move all the way to the right
  # the second argument is always a positive integer 

  #Implicit requirements:
  # if the argument is 1 then the number stays the same

# Algorithm:
# if the argument is 1, do nothing
# if the argument is 2, make it negative and move -2 index to last
# make a subarray of the n - last and run rotate_array on the subarray
# append the subarray to the rest of the array

# def rotate_rightmost_digits(num, n)
#   array_of_num = num.to_s.split('').map { |digit| digit.to_i }
#   new_array_of_num = rotate_array(array_of_num)
# end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num, n)
  array_of_num = num.to_s.split('').map { |digit| digit.to_i }
  array_of_num[-n..-1] = rotate_array(array_of_num[-n..-1])
  array_of_num.join.to_i 
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917