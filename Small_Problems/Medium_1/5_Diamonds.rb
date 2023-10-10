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
# def print_row(grid_size, distance_from_center)
# get the number of stars using grid size - (2 * distance from center)
# multiply '*' by the number of stars and save 
# output stars centered within the grid size
#
# def diamond(grid_size)
# find the maximum distance away from the center for the rows on the top and bottom using (grid size - 1) / 2
# loop from max distance down to 0; each iteration, use the distance to print the row()
# loop from 1 up to max distance; each iteration, use the distance to print the row()

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - (2 * distance_from_center)
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

diamond(9)