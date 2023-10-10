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
# change the integer into an array of chars (so it can be passed to rotate_array)
# call rotate_array on just the last n digits of the new array
# save that returned rotated portion back to the same last n digits of the new array
# turn the array back into a single number and turn that back into an integer

def rotate_array(array)
  new_array = array[1..-1] << array[0]
end

def rotate_rightmost_digits(num, n)
  num_as_array = num.to_s.chars.map { |digit| digit.to_i }
  num_as_array[-n..-1] = rotate_array(num_as_array[-n..-1])
  num_as_array.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917