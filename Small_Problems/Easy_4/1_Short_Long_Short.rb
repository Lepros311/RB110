# Problem:
# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# Test cases:
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# PEDAC

# any questions?

# input:
# 2 strings

# output:
# 1 string - the two input strings concatenated with the shorter string first, then the longer string, then the shorter string again

# rules:
  # Explicit requirements:
  # the strings are assumed to be different lengths

  #Implicit requirements:
  # If one string is empty, then just return the other string

# Algorithm:
# - count the length of string1
# - count the length of string2
# - compare the length of string1 to string2
# - save the longer string to a variable "long"
# - save the shorter string to a variable "short"
# - concatenate the strings as short + long + short and save to variable short_long_short
# - return short_long_short

def short_long_short(str1, str2)
  if str1.length > str2.length
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"