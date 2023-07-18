# Problem:
# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

# Test cases:
# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# input:
# string

# output:
# array - of substrings (shortest to longest) that start at the beginning of the original string

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - create a variable for an empty array
# - create a variable for counter/index
# - start a loop
# - place the str.slice(0, counter) letter(s) in arr[index]
# - increase the counter by 1
# - break if the counter is == str.length
# - return arr

def leading_substrings(str)
  arr = []
  count_index = 0
  loop do
    arr[count_index] = str.slice(0..count_index)
    count_index += 1
    break if count_index == str.length
  end
  arr
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']