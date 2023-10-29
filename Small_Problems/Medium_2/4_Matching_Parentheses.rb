# Problem:
# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Note that balanced pairs must each start with a (, not a ).

# Test cases:
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false
# balanced?('What ())(is() up') == false

# input:
# string

# output:
# boolean

# rules:
  # balanced pairs must start with ( and not )
  # have the same number of ( and ) on each side 

  #Implicit requirements:
  # 

# Algorithm:
# initialize a parens variable to a value of 0
# iterate through each character using string.each_char
  # for each char, increase parens by 1 if char is '('
  # decrease parens by 1 if char is ')'
  # break if parens is negative; this would mean that a closing parens is before an opening parens
  # call .zero? on parens to return true/false - balanced parens will be 0

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end
  parens.zero?
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
puts balanced?('What ())(is() up') == false