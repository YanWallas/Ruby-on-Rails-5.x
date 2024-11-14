class Pessoa
  def initialize(cont = 1) #Metodo initialize é um parâmetro especial que serve para indicarmos o que a classe deve fazer ao ser inicializada.
    cont.times do |i| # Metodo contagem de tempo.
      puts "Inicializando.....#{i}"
    end
  end 

  def falar(nome = "pessoal") # se nao passar argumentos, padrao vai ser pessoal.
    "Olá, #{nome}, tudo Bem!"
  end

  def falar2(texto = "Olá", texto2 = "hello!")
    "#{texto} - #{texto2}!"
  end
end

p = Pessoa.new #Não passei parametro pro initialize, vai roda o padrao definido. 
puts p.falar #sem passar parametro.
puts p.falar("Wallas") # Passando parametro. 

puts p.falar2
puts p.falar2("Yan", "26 anos")

p1 = Pessoa.new(5) # 5 - paramento do initialize time.

# No irb ou pry faz os seguintes comandos para acessar a class.

#yan@yan-dev:~/dev/Ruby-on-Rails-5.x/modulo_02$ irb
#cannot load such file -- pry

#2.7.8 :001 > require_relative "10_pessoa"
# => true 
#2.7.8 :002 > p = Pessoa.new
# => #<Pessoa:0x0000567e8d821998> 
#2.7.8 :003 > p.falar
# => "Olá, pessoal!" 