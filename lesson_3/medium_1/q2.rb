# medium 1 - question 2

# Create a hash that expresses the frequency with which each letter occurs in this string:
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"

# my solution
result = {}
new_statement = statement.split(//)
new_statement.delete(" ")

new_statement.each do |letter|
  if result.has_key?(letter)
    result[letter] << (letter)
  else
    result[letter] = letter
  end
end

new_result = {}
result.each do |key, value|
  new_result[key] = value.length
end

p new_result

# launch school solution
# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end