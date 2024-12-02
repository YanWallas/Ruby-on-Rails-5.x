require 'os'

# saída de dado
print 'Digite seu nome: '

# Recebendo uma entrada do teclado
name = gets.chomp

# saída de dado
print 'Digite seu Sobrenome: '

# Recebendo uma entrada do teclado
Sobrenome = gets.chomp

# saída utilizando puts
# use códigos ruby dentro de uma string com #{code}
puts "Hello #{name} #{Sobrenome}!"

def my_os
  if OS.windows?
    'Windows'
  elsif OS.linux?
    'Linux'
  elsif OS.mac?
    'OSX'
  else 
    'Não identificado'
  end
end

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}"