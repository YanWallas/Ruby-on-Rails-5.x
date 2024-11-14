# < - para indicar a herança.
# No Ruby não existe herança mútipla, ou seja, não é possivel herdar de várias classes ao mesmo tempo.

class Pessoa
  attr_accessor :nome, :email 
end

class PessoaFisica < Pessoa #recebe class Pessoa dentro dela como herança
  attr_accessor :cpf

  def falar(texto)
    texto
  end
end


class PessoaJuridica < Pessoa #recebe class Pessoa dentro dela como herança
  attr_accessor :cnpj

  def pagar_fornecedor
    "Pagando fornecedor..."
  end
end

p1 = Pessoa.new #Gerando apenas class Pessoa
#setter
p1.nome = "Wallas"
p1.email = "wallas@wallas.com"

#getter
puts p1.nome
puts p1.email

puts "*************"

p2 = PessoaFisica.new #Gerando PessoaFisica com class Pessoa como herança
#setter
p2.nome = "Yan"
p2.email = "yan@yan.com"
p2.cpf = "989898989898988"

#getter
puts p2.nome
puts p2.email
puts p2.cpf
puts p2.falar("hello! Sou Pessoa Fisica")

puts "*************"

p2 = PessoaJuridica.new #Gerando PessoaJuridica com class Pessoa como herança
#setter
p2.nome = "udemy"
p2.email = "yan@udemy.com"
p2.cnpj = "989898989/0001-98"

#getter
puts p2.nome
puts p2.email
puts p2.cnpj

puts p2.pagar_fornecedor