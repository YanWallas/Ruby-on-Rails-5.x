# puts - Saida de informação para tela do usuario.
# gets -  Entrada de informação para codigo.
# chomp - retira o click do enter na entrada com gets.
# inspect - inspeciona as informações dentro da variavel.
# to_f - para numero float(não inteiros).
# to_i - Para números inteiros.
# to_s - Apenas para string.

puts "Digite seu nome:"
nome = gets.chomp # Gets entrada de string /  Chomp retira o click enter do inspect
puts "O seu nome é: #{nome}"

puts "--------------------"

puts nome.inspect #/n = representa o click enter

puts "--------------------"

puts "Digite seu salário: "
sal = gets.chomp.to_f # pega número quebrado float.

puts "Seu salário atualizado é #{sal * 1.10}"