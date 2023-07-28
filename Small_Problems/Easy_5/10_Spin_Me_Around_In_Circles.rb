# Problem:


# Test cases:


# PEDAC

# any questions?

# input:
# 

# output:
# 

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - 

def spin_me1(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me1("hello world") # "olleh dlrow"

def spin_me2(str)
  puts str.object_id # this is the starting object
  new_arr = str.split
  puts new_arr.object_id # this is a different object - the array created from #split
  new_arr.each do |word|
    word.reverse!
  end.join(" ").object_id # this is another object -the new string created from #join
end

puts spin_me2("hello world") # "olleh dlrow"