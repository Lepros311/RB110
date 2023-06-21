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
# - check if year is divisible by 4 -> year % 4 == 0
  # - if not, return false
  # - if yes, also check if year is divisible by 100 -> year % 100 == 0
    # - if yes, 
    # - also check if year is divisible by 400 -> year % 400 == 0

def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if 

end