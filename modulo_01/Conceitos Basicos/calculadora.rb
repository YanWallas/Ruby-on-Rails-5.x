result = " "

loop do 
  puts result
  puts "Selecione uma das opções"
  puts "1 - Soma"
  puts "2 - Subtração"
  puts "3 - Divisão"
  puts "4 - Multiplicação"
  puts "0 - sair"
  print "opção: "

  option = gets.chomp.to_i

  if option == 1
    print "Digite o primeiro número: "
    number1 = gets.chomp.to_f
    print "Digite o Segundo nùmero:  "
    number2 = gets.chomp.to_f
    soma = number1 + number2
    result = "O resultado da Soma è #{soma}"
  elsif option == 2
    print "Digite o primeiro número: "
    number1 = gets.chomp.to_f
    print "Digite o Segundo nùmero:  "
    number2 = gets.chomp.to_f
    subtracao = number1 - number2
    result = "O resultado da Subtração è #{subtracao}"
  elsif option == 3
    print "Digite o primeiro número: "
    number1 = gets.chomp.to_f
    print "Digite o Segundo nùmero:  "
    number2 = gets.chomp.to_f
    divisao = number1 / number2
    result = "O resultado da divição è #{divisao}"
  elsif option == 4
    print "Digite o primeiro número: "
    number1 = gets.chomp.to_f
    print "Digite o Segundo nùmero:  "
    number2 = gets.chomp.to_f
    multiplicacao = number1 * number2
    result = "O resultado da multiplicação è #{multiplicacao}"
  elsif option == 0
    break
  else 
    result = "Opção Inválido"
  end 
  system "clear"
end
