# Problem:
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Test cases:
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# PEDAC

# any questions?

# input:
# array

# output:
# array - one array of two nested arrays 

# rules:
  # Explicit requirements:
  # For an array of an odd number of elements, the middle element goes to the first array

  #Implicit requirements:
  # For an array of one element, the element goes to the first array and the second array is an empty array
  # if the argument is an empty array, return two empty arrays

# Algorithm:
# - middle = arr.length/2
# - arr[0] = arr.slice!(0, middle)
# - arr[1] = arr.slice!(middle, -1)
# - return arr

def halvsies(arr)
  return [[], []] if arr == []
  return [[arr[0]], []] if arr.length == 1
  if arr.length % 2 == 0
    middle = arr.length / 2
  else
    middle = arr.length / 2 + 1
  end
  arr[0] = arr.slice(0..middle-1)
  arr[1] = arr.slice!(middle, arr.length)
  arr.delete_at(2) if arr.length == 3
  arr 
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]