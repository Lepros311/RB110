# Problem:
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Test cases:
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# PEDAC

# any questions?

# input:
# string

# output:
# hash - key = number of letters in word(s), value = number of words that have that number of letters

# rules:
  # Explicit requirements:
  # Words consist of any string of characters that do not include a space.

  #Implicit requirements:
  # punctuation attached to the word is counted as another letter in the word
  # an empty string returns an empty hash

# Algorithm:
# - create a hash
# - use .split to create an array where each word is an element
# - use .length to get the size of each word
# - use only the unique lengths and add those as keys in the hash
# - or use a method that counts the number of times a # occurs and save that as kv
# - the number of letters is the key
# - the occurrances of the number of letters is the value
# - how can I make counts_array.uniq the keys and counts_array.each the value?

def word_sizes(str)
  words_array = str.split
  counts_array = []
  words_array.each { |word| counts_array << word.length }
  letter_counts = counts_array.each_with_object({}) do |count, hash|
    hash[count] = counts_array.count(count)
  end
end

 puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
 puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
 puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
 puts word_sizes('') == {}