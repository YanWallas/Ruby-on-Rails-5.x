class Animal
  def pular
    puts 'Toing! tóim! bóim! póim'
  end

  def dormir
    puts 'ZzZzZzzzz'
  end
end

class Cachorro < Animal
  def latir
    puts 'Au Au'
  end
end

class Gato < Animal
  def meow
    puts 'meow'
  end
end

cachorro = Cachorro.new 
gato = Gato.new

cachorro.pular
cachorro.dormir
cachorro.latir

puts '------------------'

gato.pular
gato.dormir
gato.meow
