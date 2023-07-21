# Problem:
# Given the array...
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:
# ["demo", "dome", "mode"]
# ["neon", "none"]
#(etc)

# Test cases:
# see above

# input:
# array of word strings

# output:
# array of word strings that are anagrams of the given array

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 5 output arrays / sets of anagrams 

# Algorithm:
# - compare each el to other els, checking whether they have the same chars
# - if it finds a match, create a new array and add both els to it
# - turn each word into chars array, then use .all? 

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def find_anagrams(words)

end

find_anagrams(words)