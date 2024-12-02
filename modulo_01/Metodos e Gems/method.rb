#EXEMPLOS DE METODOS

def talk(first_name, last_name)
  puts "Olá #{first_name} #{last_name}, como vocẽ está?"
end

talk('Leonardo', 'Scorza')
talk('Yan', 'Wallas')

def signal(color = 'vermelho')
  puts "O sinal está #{color}"
end

signal

color = 'verde'
signal(color)
signal('amarelo')