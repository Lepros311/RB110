# Problem:
# Write a method that counts the number of occurrences of each element in a given array. The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

# Test cases:
# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# PEDAC

# any questions?

# input:
# array

# output:
# hash

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  arr.uniq.each do |el|
    puts "#{el} => #{arr.count(el)}"
  end
end 

count_occurrences(vehicles)

