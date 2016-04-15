# easy 2 - question 8
# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |x| x.start_with?("Be") == true } # my solution
flintstones.index { |name| name[0, 2] == "Be" } # launch school solution


