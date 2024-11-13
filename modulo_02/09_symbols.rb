# strings imutáveis - não gera novos object_id

#cada string gera um id diferente, mesmo sendo a mesma string.
puts "Wallas".object_id
puts "Wallas".object_id
puts "Wallas".object_id

puts "================="

# Todos teram o mesmo id. 
puts :Wallas.object_id
puts :Wallas.object_id
puts :Wallas.object_id

puts "================="

# Hash adora usar simbolos - Os dois sao a mesma coisa 

h = { :curso => "Rails" } # Da forma antiga usando id

x = { curso: "Rails" } # Da forma nova usando id
