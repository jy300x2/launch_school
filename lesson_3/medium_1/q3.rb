# medium 1 - question 3
#Why is this and what are two possible ways to fix this?

puts "the value of 40 + 2 is " + (40 + 2)

# Can't perform addition on integer and string data types


puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40+2}"

