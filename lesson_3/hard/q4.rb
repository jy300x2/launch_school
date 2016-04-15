# hard - question 4

def produce_uuid
  possible_char = ('a'..'f').to_a + (0..9).to_a
  first_set = []
  loop do
    first_set << possible_char.sample
    break if first_set.length == 32
  end
  first_set.join.insert(8,'-').insert(13,'-').insert(18,'-').insert(23,'-')
end

