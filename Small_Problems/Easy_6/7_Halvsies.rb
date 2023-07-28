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

# Algorithm:
# - determine the middle of the array by dividing array.size by 2.0; call .ceil on that so that odd-number arrays will have the middle element included 
# - initialize the first half array by using .slice(0, middle) which starts at 0 and includes middle number of elements
# - initialize the second half array by using .slice(middle, array.size - middle) which starts at middle index (not middle element) and includes array.size - middle number of elements
# - return the two arrays in a nested array

def halvsiesLS(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

puts "---------------------"
puts halvsiesLS([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsiesLS([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsiesLS([5]) == [[5], []]
puts halvsiesLS([]) == [[], []]