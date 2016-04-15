# easy 1 - question 10

# Turn this array into a hash where the names are the keys and the values 
# are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_new_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_new_hash[name] = index
end
