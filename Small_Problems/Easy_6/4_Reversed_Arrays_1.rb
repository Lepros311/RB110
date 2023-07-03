# Problem:
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# Test cases:
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true

# list = []
# reverse!(list) == [] # true
# list == [] # true

# PEDAC

# any questions?

# input:
# array 

# output:
# array 

# rules:
  # Explicit requirements:
  # You may not use Array#reverse or Array#reverse!.

  #Implicit requirements:
  # if the argument is an array of one element, just return that array

# Algorithm:
# - we need to move the last element to the index
# - increment index by 1
# - move the last element to index
# - increment index by 1
# - move the last element to the index
# - [1, 2, 3, 4]
# - [4, 1, 2, 3]
# - [4, 3, 1, 2]
# - [4, 3, 2, 1]
# - I can't use prepend because it will always put it in the front
# - I can't use [0] because it will get rid of the value there 
# - I can create a new element added to the end
# - take the last element in the array and add it to a new nested array
# - index = arr.length-2
# - arr[arr.length-1].push(arr[index])
# - index -= 1
# - break if index < 0

def reverse!(arr)
  return arr if arr == []
  arr.push([])
  index = arr.length-2
  loop do
    arr[arr.length-1].push(arr[index])
    index -= 1
    break if index < 0
  end
  arr.shift(arr.length-1)
  arr.flatten!
end

list = [1, 2, 3, 4]
puts reverse!(list) == [4, 3, 2, 1]

list2 = %w(a b e d c)
puts reverse!(list2) == ["c", "d", "e", "b", "a"]

list3 = ['abc']
puts reverse!(list3) == ["abc"]

list4 = []
puts reverse!(list4) == []