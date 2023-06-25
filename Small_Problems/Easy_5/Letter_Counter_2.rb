# Problem:
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

# Test cases:
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

# PEDAC

# any questions?

# input:
# string

# output:
# hash

# rules:
  # Explicit requirements:
  # exclude non-letters from letter counts 

  #Implicit requirements:
  # 

# Algorithm:
# - 

def word_sizes(str)
  words_array = str.split
  counts_array = []
  words_array.each { |word| counts_array << word.scan(/[[:alpha:]]/).length }
  letter_counts = counts_array.each_with_object({}) do |count, hash|
    hash[count] = counts_array.count(count)
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}