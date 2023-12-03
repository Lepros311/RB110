# Problem:
# A triangle is classified as follows:

#     right One angle of the triangle is a right angle (90 degrees)
#     acute All 3 angles of the triangle are less than 90 degrees
#     obtuse One angle is greater than 90 degrees.

# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

# Test cases:
# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid

# input:
# 3 integers (degrees for each side of the triangle)

# output:
# symbol (:acute, :right, :obtuse, or :invalid)

# rules:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# save the sides of the triangle to an array
# use a case statement
  # check when sides.reduce(:+) < 180 or if the sides.include(0)
    # return :invalid
  # check when sides.all { |side| side < 90 }
    # return :acute
  # check when sides.any { |side| side == 90 }
    # return :right
  # else
    # return :obtuse
  # end
# end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  case
  when sides.reduce(:+) < 180 || sides.include?(0)
    :invalid
  when sides.all? { |side| side < 90 }
    :acute
  when sides.any? { |side| side == 90 }
  :right
  else
    :obtuse
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid















































# LS solution:

# def triangle(angle1, angle2, angle3)
#   angles = [angle1, angle2, angle3]

#   case
#   when angles.reduce(:+) != 180, angles.include?(0)
#     :invalid
#   when angles.include?(90)
#     :right
#   when angles.all? { |angle| angle < 90 }
#     :acute
#   else
#     :obtuse
#   end
# end

# Discussion:
# none