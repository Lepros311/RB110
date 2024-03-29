# Problem:
# Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

# Test cases:
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# PEDAC

# any questions?

# input:
# integer greater than 0

# output:
# returns true if leap year, false if not

# rules:
  # Explicit requirements:
  # if year is divisible by 4 it's a leap year, unless year also divisible by 100
  # if year is evenly divisible by 100, not a leap year...unless year is evenly divisible by 400

  #Implicit requirements:
  # 

# Algorithm:
# - rule out the items at the bottom of the funnel first. Catch the widest part of the funnel with the else statement. The least likely criteria will be tested for first.
# - check if a year is evenly divisible by 400. If so, it's a leap year.
# - check if a year is evenly divisible by 100. If so, it's not a leap year.
# - check if a year is evenly divisible by 4. If so, it's a leap year.

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true