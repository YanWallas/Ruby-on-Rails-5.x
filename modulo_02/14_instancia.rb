class Pessoa
  def initialize(nome_fornecido = "indigente")
    @nome = nome_fornecido
  end 

  def imprimir_nome
    @nome #Variavel com @ antes fica disponivel para class toda.
  end 

end

p1 = Pessoa.new
puts p1.imprimir_nome

p2 = Pessoa.new("Wallas")
puts p2.imprimir_nome