class Esportista
  def competir
    puts 'Participando de uma competição'    
  end
end

class JogadordeFut < Esportista
  def correr 
    puts 'Correndo atrás da bola'
  end
end

class Maratonista < Esportista
  def correr
    puts 'Percorrendo o circuito'
  end
end

jogador = JogadordeFut.new
maratonista = Maratonista.new

jogador.competir
jogador.correr
puts '----------------------------'
maratonista.competir
maratonista.correr