# Problem:
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# Test cases:
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# PEDAC

# any questions?

# input:
# string - '12:34'

# output:
# integer - the number of minutes before and after midnight

# rules:
  # Explicit requirements:
  # write two methods, one for # of minutes before midnight (PM), and the other for the # of minutes after midnight (AM)

  #Implicit requirements:
  # 

# Algorithm:
# - after_midnight
  # - first two elements turn into an integer
  # - last two elements turn into an integer
  # - first two integer from above * 60
  # - last two integer from above + product above
  # - return the sum above
# - before_midnight
  # - first two elements turn into an integer
  # - last two elements turn into an integer
  # - (12 - first two integer from above + 1 * 60) + (60 - last two integer from above)
  # - return the result above
DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def after_midnight(str)
  if str == '00:00' || str == '24:00'
    return 0
  end
  first_two_string = str.slice(0, 2)
  last_two_string = str.slice(3, 4)
  first_two_int = string_to_integer(first_two_string)
  last_two_int = string_to_integer(last_two_string)
  first_two_int * 60 + last_two_int
end

def before_midnight(str)
  if str == '00:00' || str == '24:00'
    return 0
  end
  first_two_string = str.slice(0, 2)
  last_two_string = str.slice(3, 4)
  first_two_int = string_to_integer(first_two_string)
  last_two_int = string_to_integer(last_two_string)
  if first_two_int != 12
    ((12 - first_two_int + 1) * 60) + (60 - last_two_int)
  else 
    ((12 - 1) * 60) + (60 - last_two_int)
  end
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0