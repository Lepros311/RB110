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
# - I need to find a way to skip to spaces
# - Count everything except the spaces 
# - create a count variable
# - only increase the count variable if a character is something other than space
# - first index is .upcase
# - use Next if str[index] == ' '
# - use a flag that switches true/false w/ each iteration

def staggered_case(str)
  staggered_str = ''
  need_upper = true
  str.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        staggered_str += char.upcase
      else
        staggered_str += char.downcase
      end
      need_upper = !need_upper
    else
      staggered_str += char
    end
  end
   staggered_str
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'