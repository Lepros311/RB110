# Problem:
# Write a method that takes a string, and returns a new string in which every character is doubled.

# Test cases:
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

# input:
# string

# output:
# string - a new string

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - create new string
# - let's iterate over the string
# - on each iteration, we'll push that character into the new string twice
# - return the new string

def repeater(str)
  new_str = ''
  str.chars.each do |char|
    new_str << char
    new_str << char # new_str << char << char
  end
  new_str
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''