# Problem:
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# Test cases:
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

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
# - initialize an empty result string
# - set a need_upper flag to true
# - string.chars.each to create an array of the characters in the string and iterate
  # - if char is a letter, check if need_upper is true or false
    # - if it's true, result += char.upcase; if it's false, result += char.downcase
    # - flip the need_upper flag to false so that it executes the other branch next
  # - if char is not a letter, result += char (something other than a letter)
# - return the result


def staggered_case(string)

end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'