# easy 2 - question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.reject {|k,v| v > 100} # my solution
ages.keep_if { |name, age| age < 100 } # launch school answer
