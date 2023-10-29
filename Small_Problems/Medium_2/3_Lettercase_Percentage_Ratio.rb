# Problem:
# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# Test cases:
# letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# input:
# string

# output:
# hash

# rules:
  # You may assume that the string will always contain at least one character.

  #Implicit requirements:
  # 

# Algorithm:
# letter_percentages(string)
  # initialize an empty hash for counts
  # initialize an empty hash for percentages
  # save the string's chars to a characters array
  # save the length of the string
  # call .count on the characters array; in the block, use the pattern-matching operator to compare the char to the regex for lowercase /[a-z]/; the block will return the index of the first matching substring; .count will return the count of how many block evaluations returned a truthy value; save this number to counts[:lowercase]
  # call .count on the characters array; in the block, use the pattern-matching operator to compare the char to the regex for uppercase /[A-Z]/; the block will return the index of the first matching substring; .count will return the count of how many block evaluations returned a truthy value; save this number to counts[:uppercase]
  # call .count on the characters array; in the block, use the pattern-matching operator to compare the char to the regex for non-letters /[^A-Za-z]/; the block will return the index of the first matching substring; .count will return the count of how many block evaluations returned a truthy value; save this number to counts[:neither]
  # call a calculate method and pass in the empty percentages hash, the counts hash, and the length
  # return the percentages hash
# calculate(percentages, counts, length)
  # divide the lowercase counts by length.to_f and then multiple by 100 (for percent) and save to percentages[:lowercase]
  # divide the uppercase counts by length.to_f and then multiple by 100 (for percent) and save to percentages[:uppercase]
  # divide the non-letters counts by length.to_f and then multiple by 100 (for percent) and save to percentages[:neither]

def letter_percentages(string)
  counts = {}
  percentages = {}
  characters = string.chars 
  length = string.length 
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  
  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:lowercase] = counts[:lowercase] / length.to_f * 100
  percentages[:uppercase] = counts[:uppercase] / length.to_f * 100
  percentages[:neither] = counts[:neither] / length.to_f * 100
end

puts letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }