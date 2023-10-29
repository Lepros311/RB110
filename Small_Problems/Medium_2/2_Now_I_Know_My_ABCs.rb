# Problem:
# A collection of spelling blocks has two letters per block, as shown in this list:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.
# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# Test cases:
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# input:
# string

# output:
# true or false

# rules:
  # cannot have a word that uses both letters in any letter pair
  # each letter in each block can be used only once

  #Implicit requirements:
  # 

# Algorithm:
# save as a constant the blocks of letters as strings in an array
# convert the string to all uppercase to match the block strings
# call .none? on the blocks array
  # for the iteration through each block, call .count on the string with the given block as an argument and check whether either letter in the block is in the string 2 times or more; if it returns false, then .none? will return true; if it returns true, then .none? will return false

BLOCKS = %w(BO, XK, DQ, CP, NA, GT, RE, FS, JW, HU, VI, LY, ZM).freeze

def block_word?(string)
  upstring = string.upcase 
  BLOCKS.none? { |block| string.count(block) >= 2 }
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true

