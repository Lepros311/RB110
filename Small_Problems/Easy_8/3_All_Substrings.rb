# Problem:
# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

# Test cases:
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# input:
# string

# output:
# array - of all substrings in a string

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - I want to use the previous method
# - but I want it to start at each subsequent character on each iteration
# - create a start counter = 0
# - start a loop
# - call the method

def leading_substrings(str, start)
  arr = []
  count_index = 0
  loop do
    arr[count_index] = str.slice(start..count_index)
    count_index += 1
    break if count_index == str.length
  end
  arr
end

def substrings(str)
  arr = []
  start = 0
  loop do
    arr << leading_substrings(str, start)
    start += 1
    break if start == str.length
  end
  arr.flatten!.delete('')
  arr
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]