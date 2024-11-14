class Pessoa
  def falar
    "Olá, pessoal!"
  end
end

# No irb ou pry faz os seguintes comandos para acessar a class.

#yan@yan-dev:~/dev/Ruby-on-Rails-5.x/modulo_02$ irb
#cannot load such file -- pry

#2.7.8 :001 > require_relative "10_pessoa"
# => true 
#2.7.8 :002 > p = Pessoa.new
# => #<Pessoa:0x0000567e8d821998> 
#2.7.8 :003 > p.falar
# => "Olá, pessoal!" 

