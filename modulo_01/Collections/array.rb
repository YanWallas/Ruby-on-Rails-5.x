estados = []

estados.push('Espirito Santos')#push Adiciona no final
estados.push('Rio Grande do Sul')
estados.push('Minas Gerais', 'Rio de janeiro', 'São Paulo')
puts "#{estados}"
puts "--------------------------------------"

estados.insert(0, 'Acre', 'Amapa')#Inserir na começo
puts "#{estados}"
puts "--------------------------------------"

estados.insert(2, 'Ceara')#Inserindo na posição 2 do array
puts "#{estados}"
puts "--------------------------------------"

puts "#{estados[4]}"#Pegando apenas na posição 4
puts "--------------------------------------"

puts "#{estados[1..4]}"#Mostrando com intervalos de 1 á 4

#Pode se usar estados.first para pegar o primeiro item (first)
#E pode usar estados.last para peggar o ultimo item (last)

#estados.count => Quantos itens tem dentro do array
#estados.empty? => se o array esta fazio ou nao (boolean)
#estados.include?('Santa Catarina') => se santa Catarina esta dentro do array
#estados.delete_at(2) => vai deletar o segundo item dentro do array
#estados.pop => vai deletar o ultimo item dentro do array
#estados.shift => vai deletar o primeiro item dentro do array