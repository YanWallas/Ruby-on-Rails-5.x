class Pessoa
  def falar # método de instãncia / Precisa instanciar
    "Olá, pessoal!"
  end 

  def self.gritar(texto) # Método de classe / Não precisa instanciar
    "#{texto}!!!"
  end
end

p1 = Pessoa.new 
puts p1.falar

puts Pessoa.gritar("Hello")