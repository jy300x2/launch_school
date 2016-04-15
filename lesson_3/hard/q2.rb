# hard - question 2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
puts informal_greeting.object_id
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # {:a=>"hi there"}

