# if - significa 'SE'.
# else - significa "SE NÂO".
# unless - (Se não/ a menos que) - praticamente é o IF negativo.
# case - (caso seja isso, faça isso)
# Estrutura condicional ternária <condição> ? <Verdadeiro> : <falso> - Mesma coisa do if-else(apenas uma linha)

# Estrutura IF (Se)
print 'Digite um Número: ' # Print não pula linha. 
x = gets.chomp.to_i

if x > 2 
  puts "#{x} é maior que 2"
end 
puts "*****************"

# Estrutura unless (Se não/ a menos que)
print 'Digite um Número: ' # Print não pula linha. 
n = gets.chomp.to_i

unless n >= 10
  puts "#{n} é menor que 10"
else
  puts "#{n} é maior que 10"
end 
puts "*****************"

# Estrutura case (caso seja)
print 'Digite uma idade: ' # Print não pula linha. 
idade = gets.chomp.to_i

case idade
  when 0..2
    puts "Bebê"
  when 3..12
    puts "Criança"
  when 13..18
    puts "Adolescente"
  else 
    puts "Adulto"
end
puts "*****************"

# Estrutura condicional ternária
sexo = 'M'

#      <condição> ? <Verdadeiro> : <falso> - Mesma coisa do if-else
puts (sexo == 'M' ? 'Masculino' : "Feminino")

#<condição> ? <Verdadeiro>  : <falso> - Outra forma de imprimie resultado
sexo == 'M' ? (puts 'Masculino') : (puts 'Feminino')
