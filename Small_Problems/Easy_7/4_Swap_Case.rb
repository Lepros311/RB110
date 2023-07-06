# Problem:
# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# Test cases:
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# PEDAC

# any questions?

# input:
# string

# output:
# string - new string

# rules:
  # Explicit requirements:
  # You may not use String#swapcase; write your own version of this method.

  #Implicit requirements:
  # 

# Algorithm:
# - create index/counter variable
# - begin loop
# - if str[index] == [/[a-z]/] then str[index].ord - 32
# - if str[index] == [/[A-Z]/] then str[index].ord + 32
# - increment index/counter
# - 

def swapcase(str)
  index = 0
  loop do
    if str[index].match(/[a-z]/)
      str[index] = (str[index].ord - 32).chr
    elsif str[index].match(/[A-Z]/)
      str[index] = (str[index].ord + 32).chr
    end
    index += 1
    break if index == str.length
  end
  str
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'