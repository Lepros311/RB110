# Problem:
# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

# Test cases:
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# input:
# - array - 2 or more elements - person's name
# - hash - 2 k/v pairs - :title and :occupation

# output:
# string - a greeting that uses the person's full name, title, and occupation

# rules:
  # Explicit requirements:
  # 

  #Implicit requirements:
  # 

# Algorithm:
# - use string interpolation
# - 

def greetings(name_arr, work_hash)
  "Hello, #{name_arr.join(' ')}! Nice to have a #{work_hash[:title]} #{work_hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."