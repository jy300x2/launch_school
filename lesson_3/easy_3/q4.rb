# easy 3 - question 4
# Shorten this sentence:
# ...remove everything starting from "house".
# Review the String#slice! documentation, and use that method to make the return value 
#{ }"Few things in life are as important as ". 
# But leave the advice variable as "house training your pet dinosaur.".
# As a bonus, what happens if you use the String#slice method instead?

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0, advice.index("house"))
