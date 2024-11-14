class Pessoa 
  attr_accessor :nome #Atalho para getter e setter
end

p1 = Pessoa.new
p1.nome = "Lima" #setter
puts p1.nome #getter

class Pessoa2
  def initialize(nome1 = "teste") # O attr_accessor de cima, é atalho para esses metodos.
    @nome1 = nome1
  end

  def set_nome=(nome1)
    @nome1 = nome1
  end

  def get_nome
    @nome1
  end
end

p2 = Pessoa2.new
p2.set_nome = "Wallas"
puts p2.get_nome