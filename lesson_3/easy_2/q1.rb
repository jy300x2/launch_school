# easy 2 - question 1

# In this hash of people and their age, see if there is an age present for "Spot".
# Bonus: What are two other hash methods that would work just as well for this solution?

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.key?("Spot")
ages.keys.include? "Spot"