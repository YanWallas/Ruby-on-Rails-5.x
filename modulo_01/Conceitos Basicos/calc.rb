print "Digite o primeiro número inteiro: "
number1 = gets.chomp.to_i

print "Digite o Segundo número inteiro: "
number2 = gets.chomp.to_i

addition = number1 + number2
subtracao = number1 - number2
multiplicacao = number1 *  number2
divisao = number1 / number2
puts "O resultado da adição entre os dois números é #{addition}"
puts "O resultado da subtração entre os dois números é #{subtracao}"
puts "O resultado da multiplicação entre os dois números é #{multiplicacao}"
puts "O resultado da divisão entre os dois números é #{divisao}"