# Problem:
# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Test cases:
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

# input:
# 3 integers

# output:
# string - letter grade associated with the avg of the 3 integers

# rules:
  # Explicit requirements:
  # Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

  #Implicit requirements:
  # 

# Algorithm:
# - add the scores and save to sum variable
# - divide the scores by 3.0 and save to avg variable
# - use a case statement to return the appropriate letter grade

def get_grade(score1, score2, score3)
  sum = score1 + score2 + score3
  avg = sum / 3.0
  if (avg >= 90) && (avg <= 100)
    return 'A'
  elsif (avg >= 80) && (avg < 90)
    return 'B'
  elsif (avg >= 70) && (avg < 80)
    return 'C'
  elsif (avg >= 60) && (avg < 70)
    return 'D'
  else
    return 'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"