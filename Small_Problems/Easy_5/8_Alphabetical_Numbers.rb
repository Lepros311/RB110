# Problem:
# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# Test cases:
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# PEDAC

# any questions?

# input:
# array - array of integers between 0 and 19

# output:
# array - array of integers sorted based on their English word alphabetical order

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - create an array of English words for 0 to 19
# - sort the array alphabetically 
# - use the hash to array matching strategy 
# - use .each_with_object to create a new array
# - compare the word with the number 
# - how will I get the word to line up with the number?
# - turn it into a hash with the integers as values and then use .values



def alphabetic_number_sort(arr)
  alphabet = {'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9, 'ten' => 10, 'eleven' => 11, 'twelve' => 12, 'thirteen' => 13, 'fourteen' => 14, 'fifteen' => 15, 'sixteen' => 16, 'seventeen' => 17, 'eighteen' => 18, 'nineteen' => 19}

  alpha_keys_sorted = alphabet.keys.sort
  counter = 0
  ints_sorted_by_alpha = []
  alphabet.each do |k, v|
    ints_sorted_by_alpha << alphabet[alpha_keys_sorted[counter]]
    counter += 1
  end
  ints_sorted_by_alpha
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]