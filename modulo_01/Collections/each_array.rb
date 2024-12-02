names = ['João', 'Manoel', 'Juca']

name = 'Leonardo scorza'

names.each do |name|#vai rodar pelo array inteiro
  puts name + ' é o meu nome'
end 

puts name 
puts "-----------------"

#Each hash
aulas = {'Aula 1 ' => 'liberada', 'Aula 2 ' => 'liberada', 'Aula 3 ' => 'liberada', 'Aula 4 ' => 'liberada', 'Aula 5 ' => 'Em breve'}

aulas.each do |key, value|
  puts "#{key} #{value}"
end

# map - array

array = [1, 2, 3, 4]

#\n é uma quebra de linha
puts "\n Executando .map multiplicando cada item por 2"
# .map não altera o conteúdo do array original
new_array = array.map do |a|
  a * 2
end

puts "\n Array Original"
puts " #{array}"

puts "\n Novo Array"
puts " #{new_array}"

puts "\n Executando .map! multiplicando cada item por 2"
# .map! força que o conteúdo do array original seja alterado
array.map! do |a|
  a * 2
end

puts "\n Array Original - Substituido"
puts " #{new_array}"
puts ''
puts "-----------------"

# Select - array

array1 = [1, 2, 3, 4, 5, 6]

selection = array1.select do |a|
  a >= 4  
end

puts selection

# Select - Hash

hash1 = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}

puts 'Selecionando keys com valor maior que 0'
selection_key = hash1.select do |key, value|
  key > 1
end

puts selection_key