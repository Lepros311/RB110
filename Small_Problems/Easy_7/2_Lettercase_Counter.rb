# Problem:
# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one represents the number of characters that are uppercase letters, and one represents the number of characters that are neither.

# Test cases:
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# PEDAC

# any questions?

# input:
# string

# output:
# hash w/ 3 k/v pairs - number of chars in string that are lowercase letters, number of chars in string that are uppercase letters, and number of characters that are neither

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # an empty string will result in a value of 0 for each k/v pair in the hash

# Algorithm:
# - create a hash with the following k/v: lowercase: 0, uppercase: 0, neither: 0
# - if str is empty, return the hash
# - use .gsub[/[a-z]/].count to get the lowercase count and save to hash[lowercase]
# - use .gsub[/[A-Z]/].count to get the uppercase count and save to hash[uppercase]
# - use .gsub[/[^a-zA-Z]/].count to get non-letter count and save to hash[neither]
# - return the hash

def letter_case_count(str)
  str_hash = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }
  return str_hash if str == ''
  str_hash[:lowercase] = str.gsub(/[a-z]/).count
  str_hash[:uppercase] = str.gsub(/[A-Z]/).count
  str_hash[:neither] = str.gsub(/[^a-zA-Z]/).count
  str_hash
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }