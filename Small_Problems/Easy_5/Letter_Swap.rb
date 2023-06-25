# Problem:
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# Test cases:
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# PEDAC

# any questions?

# input:
# string - multiple words or even just one letter

# output:
# string - with the first and last letter of each word switched

# rules:
  # Explicit requirements:
  # Swap first and last letters of each word

  #Implicit requirements:
  # if just one letter, return that letter

# Algorithm:
# - use .split to create an array where each word is an element
# - save the first character and assign it to the last element

def swap(str)
  if str.length == 1
    return str
  end
  words = str.split
  words.each do |word|
    first = word[0]
    last = word[word.length-1]
    word[0] = last
    word[word.length-1] = first
  end
  words.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'