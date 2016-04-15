# easy 3 - question 3
# How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.insert(-1,"Dino", "Hoppy")

flintstones.push("Dino").push("Hoppy")   # launch school solution 
flintstones.concat(%w(Dino Hoppy))  # launch school solution

