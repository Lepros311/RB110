# Problem:
# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number. New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Test cases:
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# PEDAC

# any questions?

# input:
# integer - a year (ex: 1788)

# output:
# string - "18th"

# rules:
  # Explicit requirements:
  # next centuries begin in years that end with 01 (ex: 1901 starts the 20th century)

  #Implicit requirements:
  # input should be an integer greater than 0

# Algorithm:
# - get input integer from user
# - determine what century the year is in
  # - 4 digit years - if the last two digits are 01 or higher, then the century is one higher than the first two digits 
  # - 
# - return the century as a string
# - 