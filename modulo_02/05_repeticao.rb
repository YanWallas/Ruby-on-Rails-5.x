#Estrutura de repetição

# while - enquanto 
i = 0
num = 5

while i < num do 
  puts "Contando ... #{i}"
  i += 1
end 

# each - anda por cada elemento.

(0..5).each do |e|
  puts "O valor lido foi: #{e}"
end