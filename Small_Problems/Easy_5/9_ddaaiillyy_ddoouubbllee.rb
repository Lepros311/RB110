# Problem:
# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. 

# Test cases:
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# PEDAC

# any questions?

# input:
# string 

# output:
# string - a new string w/ all consecutive duplicate characters collapsed into a single character

# rules:
  # Explicit requirements:
  # You may not use String#squeeze or String#squeeze!.

  #Implicit requirements:
  # a string with no duplicate characters will return the same string
  # an empty string will return an empty string

# Algorithm:
# - check string length for 0 and if so, return empty string
# - use .chars to create an array of characters
# - check each consecutive element to see if it's the same as the one next to it
# - if it is, delete one of them
# - compare the character to every other element in the array

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''