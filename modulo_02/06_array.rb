# push - Adiciona um item.

v = [1,3,5,6,7,9] # atribuindo valor dentro de um array.

v.each do |i|
  puts i 
end
puts "***********"

v1 = Array.new # Criando array vazio.
v1.push('Yan') # Posição 01 / indice 0
v1.push('Wallas')# Posição 02 / indice 1
v1.push(26)# Posição 03 / indice 2
v1.push(1.71)# Posição 04 / indice 3

v1.each do |i| # vai rodar por cada item dentro do array,
  puts i # Vai imprimir na dela.
end
puts "**********"

array = [[11,12,13],[21,22,23],[31,32,33]] #arrays dentro de um array.

array.each do |externo| # vai andar por cada array
  externo.each do |interno| # vai andar pelos itens dentro do array
    puts interno #vai inprimir os itens
    puts "---"
  end
end
