# Problem:
# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Test cases:
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# input:
# string

# output:
# same string

# rules:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# create a hash with keys as 'zero' and values as '0' for example
# in the method, iterate through each key of the hash
#   on each iteration, call .gsub! on given str. Match the word from the hash keys (using regex) and replace with the value of that hash key
# return the given str

DIGIT_HASH = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}.freeze

def word_to_digit(str)
  DIGIT_HASH.keys.each do |word|
    str.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  str
end


puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'