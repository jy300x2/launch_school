# medium 1 - question 5

def factors(number)
  dividend = number
  divisors = []
  begin
    while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
    end
  end until dividend == 0
  divisors
end

# Bonus 1 - What is the purpose of the number % dividend == 0 ?
# To prevent using floats/non-integer numbers

# Bonus 2 - What is the purpose of the second-to-last line in the method (the divisors before the method's end)?
# To return an array of the factors of a number