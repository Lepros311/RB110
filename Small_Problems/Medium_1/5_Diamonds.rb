# Problem:
# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# Test cases:


# input:
# integer

# output:
# string

# rules:
  # the diamond is an n x n grid where n is an odd integer supplied as an argument
  # you may assume that the argument will always be odd 

  #Implicit requirements:
  # 

# Algorithm:
# print stars
# each row will have n characters
# the first row will have 1 star
# the middle row will have n stars
# the last row will have 1 star 
# n-(n-1)
# n-(n-3)
# n-(n-5)
# n-(n-7)
# n-(n-9)
# n-(n-7)
# n-(n-5)
# n-(n-3)
# n-(n-1)

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)  
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

diamond(9)