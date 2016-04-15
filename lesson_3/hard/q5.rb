# hard - question 5
def is_a_number?(s)
  s.to_i.to_s == s
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
    return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_a_number?(word)
  end
  true
end
