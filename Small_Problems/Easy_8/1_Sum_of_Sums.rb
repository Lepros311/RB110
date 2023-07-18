# Problem:
# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# Test cases:
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# input:
# array - an array of integers

# output:
# integer - the sum of of each leady subsequence of that array

# rules:
  # Explicit requirements:
  # the array always contains at leasat one integer

  #Implicit requirements:
  # 

# Algorithm:
# - sum1 = el1
# - sum2 = el1 + el2
# - sum3 = el1 + el2 + el3
# - sum1 + sum2 + sum3
# - add index 1 to index 2
# - add index 1 to index 2 to index 3...

def sum_of_sums(arr)
  return arr[0] if arr.length == 1
  sum = arr[0]
  spread = 1
  loop do 
    sum += arr[0..spread].sum
    spread += 1
    break if spread == arr.length
  end
  sum
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35