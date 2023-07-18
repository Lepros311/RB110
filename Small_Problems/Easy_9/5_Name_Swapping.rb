# Problem:
# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

# Test cases:
# swap_name('Joe Roberts') == 'Roberts, Joe'

# input:
# string - fname lname

# output:
# string - lname, fname

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - arr = str.split
# - arr[2] = arr[0]
# - arr[0].delete
# - arr[0] += ','
# - arr.join(' ')

def swap_name(str)
  arr = str.split
  arr[2] = arr[0]
  arr.shift
  arr.join(', ')
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'