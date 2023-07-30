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
# - create an empty hash
# - words.each do |word|
  # - on each iteration, split, sort, and join the word, and save to key variable
  # - if the key exists in the hash, push the word into the value for that key (which is an array)
  # - if the key does not exist in the hash, add it with a value of [word] to create a new array as a value to the new key and the word being its first element
# - iterate over the hash values with .each_value
  # - print a separator "-------""
  # - print just the arrays: p v

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def find_anagrams(words)
  result = {}
  words.each do |word|
    key = word.split('').sort.join
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
  end

  result.each_value do |v|
    puts '-------------'
    p v
  end
end

find_anagrams(words)