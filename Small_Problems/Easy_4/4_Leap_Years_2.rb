# Problem:
# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

# Test cases:
# see puts statements below

# PEDAC

# any questions?

# input:
# integer (year)

# output:
# return true for leap year, false otherwise

# rules:
  # Explicit requirements:
  # update the method used for the previous exercise
  # 1752 is a leap year
  # prior to 1752, any year that is evenly divisible by 4 is a leap year

  #Implicit requirements:
  # for years after 1752, use the existing logic 

# Algorithm:
# - check if the year is greater than 1752 and if so, use the existing logic
# - if the year is 1752 or earlier, just check if it's evenly divisible by 4

def leap_year?(year)
  if year > 1752
    if year % 400 == 0
      true
    elsif year % 100 == 0
      false
    else
      year % 4 == 0
    end
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
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true