phrase = "Hellow, how are you?"

match_data = /how/.match(phrase) #verifanco se tem a palavra how

puts match_data
puts '----------'
puts match_data.pre_match #À esquerda da palavra how
puts '----------'
puts match_data.post_match #À direita da palavra how
