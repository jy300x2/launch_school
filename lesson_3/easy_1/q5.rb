# easy 1 - question 5

# Programmatically determine if 42 lies between 10 and 100.

a = (10..100)
a.include?(42) # true

# alternate
p a.cover?(42) # true
