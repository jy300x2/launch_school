# medium 1 - question 8

# In another example we used some built-in string methods to change the case of a string. 
# A notably missing method is something provided in Rails, but not in Ruby itself...titleize! 
# This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title.
# Write your own version of the rails titleize implementation.

title = "the united states of america is home to over 300 million people"

title.split.map {|word|word[0].upcase + word.slice(1..word.length)}.join(' ')
title.split.map {|word| word.capitalize}.join(' ') # launch school solution
