# Problem:
# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Test cases:
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# PEDAC

# any questions?

# input:
# string

# output:
# string - new string

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - new_str = ''
# - create index/counter variable
# - begin loop
# - if str[index]index.even? then upcase
# - new_str[index] = 
# - if str[index].index.odd? then downcase
# - break if index/counter == str.length
# - end loop
# - return new string

def staggered_case(str)
  staggered_str = ''
  index = 0
  loop do 
    if index.even?
      staggered_str[index] = str[index].upcase
    else
      staggered_str[index] = str[index].downcase
    end
    index += 1
    break if index == str.length
  end
  staggered_str
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'