# Problem:
# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# Test cases:
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

# PEDAC

# any questions?

# input:
# array 

# output:
# array - a new object, not the same as the input object 

# rules:
  # Explicit requirements:
  # You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

  #Implicit requirements:
  # if the argument is an array of one element, just return that array

# Algorithm:
# - 

def reverse(arr)
  return arr if arr.length == 1 || arr == []
  arr.push([])
  index = arr.length-2
  loop do
    arr[arr.length-1].push(arr[index])
    index -= 1
    break if index < 0
  end
  arr.shift(arr.length-1)
  arr.flatten
end

list = [1, 2, 3, 4]
puts reverse(list) == [4, 3, 2, 1]

list2 = %w(a b e d c)
puts reverse(list2) == ["c", "d", "e", "b", "a"]

list3 = ['abc']
puts reverse(list3) == ["abc"]

list4 = []
puts reverse(list4) == []