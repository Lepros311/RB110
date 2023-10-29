# Problem:
# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# Test cases:
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# input:
# three integers

# output:
# symbol

# rules:
  # A triangle is classified as follows:

  #   equilateral All 3 sides are of equal length
  #   isosceles 2 sides are of equal length, while the 3rd is different
  #   scalene All 3 sides are of different length

  # To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

  #Implicit requirements:
  # 

# Algorithm:
# save the sides of the triangle to an array
# get the largest side by using .max
# use a case statement
  # check when 2 * largest side is greater than or equal to the sum of all sides, or if the sides include 0
    # return :invalid
  # check when side1 and side2 are equal and side2 and side3 are equal
    # return :equilateral
  # check when side1 and side2 or side1 and side3 or side2 and side3 are equal
    # return :isosceles
  # else
    # return :scalene
  # end
# end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max
  case
  when 2 * largest_side >= sides.reduce(:+) || sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side2 == side3 || side1 == side3
    :isosceles
  else
    :scalene
  end
end

puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid