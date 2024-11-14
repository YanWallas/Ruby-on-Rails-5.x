class Pessoa
  def falar
    "Olá, pesooal!"
  end 

  def meu_id
    "Meu id é o #{self.object_id}" #pegue o proprio objeto e mosta o id dele.
  end 
end

p = Pessoa.new 
puts p.meu_id 
puts p.meu_id # tem que mostrar o mesmo id que o de cima. sao o mesmo objectc.

p1 = Pessoa.new 
puts p1.meu_id # vai mostar id diferente, pq nao sao o mesmo object.