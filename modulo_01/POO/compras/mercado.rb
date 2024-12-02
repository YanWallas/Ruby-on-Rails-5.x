class Mercado
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
  
  def comprar
    puts "Vocẽ comprou o produto #{@nome} no valor de #{@preco}"
  end
end