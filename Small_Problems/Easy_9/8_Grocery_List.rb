# Problem:
# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Test cases:
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

# input:
# array - nested array [['item', quantity], ['item', quantity], ['item', quantity]]

# output:
# array - single level array with each item listed per its quantity

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - create a new empty array
# - for each element in the array, add el1 to the new array el2 times
# - return the new array

def buy_fruit(grocery_list)
  arr = []
  grocery_list.each do |item|
    item[1].times do
      arr << item[0]
    end
  end
  p arr
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]