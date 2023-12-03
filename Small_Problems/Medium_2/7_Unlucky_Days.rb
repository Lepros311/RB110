# Problem:
# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

# Test cases:
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# input:
# 

# output:
# 

# rules:
  # 

  #Implicit requirements:
  # 

# Hint
# Ruby's Date class may be helpful here.
# Look at how to initialize a Date object
# Look at the friday? method

# Algorithm:
# create empty array to hold friday13 booleans true
# initialize dates with first of year and range to last of year
# call each on range above; iterate and shovel true into array if .friday? && .mday == 13
# return array.count
require 'date'

def friday_13th(year)
  friday13 = []
  (Date.new(year, 1, 1)..Date.new(year, 12, 31)).each { |date| friday13 << true if date.friday? && date.mday == 13 }
  friday13.count
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2









































# LS solution:

# require 'date'

# def friday_13th(year)
#   unlucky_count = 0
#   thirteenth = Date.civil(year, 1, 13)
#   12.times do
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end

# Discussion

# This one is interesting. First, we must require the Date class, since that class isn't part of the core library. This problem asks us to find all Friday the 13ths in a given year. To do this is, we step through each month of the year and look at the 13th of the month; if it's a Friday, we increment unlucky_count.