# Problem:
# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# Test cases:
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# input:
# string 

# output:
# array - of all substrings that are palindromes

# rules:
  # Explicit requirements:
  # You may (and should) use the substrings method you wrote in the previous exercise.
  # For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

  #Implicit requirements:
  # 

# Algorithm:
# - call the previous #substrings method and then use .select w/ el == el.reverse 

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

def palindromes(str)
  substrings(str).select { |el| el == el.reverse && el.length > 1 }
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]