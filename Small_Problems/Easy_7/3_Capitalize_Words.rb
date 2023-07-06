# Problem:
# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# Test cases:
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# PEDAC

# any questions?

# input:
# string

# output:
# string - a new string

# rules:
  # Explicit requirements:
  # You may assume that words are any sequence of non-blank characters.

  #Implicit requirements:
  # 

# Algorithm:
# - use .split to create an array of words
# - create index/counter variable
# - use arr.map to iterate over each word in the array
# - next if word[0] != [/[a-z]/]
# - word.capitalize
# - use .join('') on the end of the .map block

def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'