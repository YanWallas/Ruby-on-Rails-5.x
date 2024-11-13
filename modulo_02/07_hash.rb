# hash vocẽ determina qual é a "chave" para acessar o valor.
# Não e chamada pelo indice.

# exemplo 
# h = {15, "rails", 1997, 32}
#     "x"  "curso"  "ano"  1 - "chave" para acessar o valor

# Criando hash tradicional
h = {"x" => 9, "curso" => "Rails"}

# Criando hash metodo acima da versão 1.9
j = {"idade": 26, "nome": "Yan"} # 

#Para acessar os elementos, use os []
puts h["x"]
puts j[:"nome"] # Com a versão nova, ele cria os ':' antes da chave.

puts "*************"

#Exemplo na platica 

puts "O aluno #{j[:"nome"]} de #{j[:"idade"]} anos, tem media #{h["x"]} no curso de #{h["curso"]}"