# easy 2 - question 9
# Using array#map!, shorten each of these names to just 3 characters:
# Again, shorten each of these names to just 3 characters -- but this time do it all on one line:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|name| name[0,3]}

