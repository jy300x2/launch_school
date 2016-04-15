# medium 2 - question 2
# Given this previously seen family 
# hash, print out the name, age and gender of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# (Name) is a (age) year old (male or female).

munsters.each do |name, value|
  puts "#{name} is a #{value["age"]} year old #{value["gender"]}"
end

