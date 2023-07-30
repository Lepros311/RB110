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
  # new centuries begin in years that end with 01 (ex: 1901 starts the 20th century)

  #Implicit requirements:
  # input should be an integer greater than 0

# Algorithm:
# - century = year / 100 + 1
# - century = year / 100 if year % 100 == 0
# - suffix method (returns the two-letter suffix string)
  # - check for 11, 12, 13 as these will be different from 1, 2, 3
  # - return 'th' if century % 100 is 11, 12, or 13. For example, 12 % 100 is 12. But also 112 % 100 is 12. That's why we need % 100.
  # - other than centuries ending in 11, 12, or 13, check the last digit. Get the last digit by doing % 10 on the century.
  # - when last digit is 1, 'st', 2 'nd', 3 'rd', everything else uses 'th'
  # - return the two-letter suffix string
# - change the century to a string and concatenate the suffix string returned by the suffix method. This resulting string will be the return value for the method.

def century(year)
  century = year / 100 + 1
  century = year / 100 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th' 