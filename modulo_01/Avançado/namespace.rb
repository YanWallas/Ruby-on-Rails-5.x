module ReverseWorld #Revertendo texto
  def self.puts text 
    print text.reverse.to_s
  end
end

module NormalWorld #print normal texto
  def self.puts text 
    print text
  end
end

ReverseWorld::puts "o resultado é"
NormalWorld::puts "| O resultado é"
puts "| Sou diferente"

puts "--------------------------"

module ReverseWorld1 #Revertendo texto
  def self.puts text 
    print text.reverse.to_s
  end

  class Imprimir
    def call text
      print text
      print '----Imprimir----'
    end
  end
end

imprimir = ReverseWorld1::Imprimir.new
imprimir.call 'O resultado é'
puts "--------------------------"