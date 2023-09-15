a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# Given this code, what would be the final values of a and b? Try to work this out without running the code.

# [2, [5, 8]]
# [4, [5, 8]]
# a => 2
# [4, [3, 8]]
# b => [3, 8]

# Where I'm at right now is that if it's element reference to an inner array, assignment is mutating. If not, it's not mutating.