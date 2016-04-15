# medium 2 - question 3

# We learned that whether the above "coincidentally" does 
# what we think we wanted "depends" upon what is going 
# on inside the method.

# How can we refactor this exercise to make the result 
# easier to predict and easier for the next programmer to maintain?

def tricky_method(a_string_param, an_array_param)
  a_string_param += ("rutabaga")
  an_array_param += ["rutabaga"]
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# launch school
# def not_so_tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]

#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = not_so_tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"