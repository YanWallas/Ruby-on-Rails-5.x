capitais = Hash.new

capitais = { acre: 'Rio Branco', sao_paulo: 'São Paulo' }

puts capitais
puts "-------------------------"

capitais[:minas_gerais] = "Belo Horizonte" #adicionando novo valor ao hash

puts capitais
puts "-------------------------"
puts capitais.keys# Ver as chaves 
puts "-------------------------"
puts capitais.values# Ver os valores dentro da chave

#capitais.delete(:acre) => deletar a chave
#capitais.size => Quantidade de elementos no hash
#capitais.empty? => se o hash esta fazio ou nao (boolean)