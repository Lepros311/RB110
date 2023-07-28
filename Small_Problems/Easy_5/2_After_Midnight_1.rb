# Problem:
# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# Test cases:
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# PEDAC

# Explanation:
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# input:
# integer - positive, negative, or zero

# output:
# string - 

# rules:
  # Explicit requirements:
  # You may not use ruby's Date and Time classes.
  # Disregard Daylight Savings and Standard Time and other complications.

  #Implicit requirements:
  # 

# Algorithm:
# - Let me restate the problem here for clarity: We are taking an integer and turning it into the time of day. The number given is the number of minutes past midnight (if positive) or before midnight (if negative). We're not concerned with the days or anything like that - just the time. There are 1440 minutes in a day (24 * 60). So, we're only concerned with numbers from 0-1439 (12:00am to 11:59pm). But if we are given a number outside of 0-1439, there are things we can do to get the equivalent of that range. For example, -3 is the same as 1437. Another example, 1448 is the same as 8. For negative numbers, we can add 1440 until the number becomes positive. We may have to do that more than once in case the number is less than -1440. For numbers higher than 1440, % the number by 1440. The remainder is the number of minutes sans the whole day(s). If it is a number between 0 and 1439, it will just return the number itself. For example, 55 % 1400 is 0 with 55 left over. 
# - normalize the given number as described above
# - divide that number by 60 to get the hours; the remainder is the minutes
# - format the hours, minutes



puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"