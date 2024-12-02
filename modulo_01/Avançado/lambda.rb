first_lambda = lambda { puts "my first lambda" }
first_lambda.call

first_lambda1 = -> { puts "trocando lambda por '->'" }
first_lambda1.call
puts '----------------'

# Criando um lambda, passando um paramentro e um block dentro do parametro.
first_lambda2 = -> (names){ names.each { |name |puts name} }

names = ["João", "maria", "pedro"]

first_lambda2.call(names)
puts '----------------'

#LAMBDA DE MULTIPLAS LINHAS
my_lambda = lambda do |numbers| #De multiplas linhas, precisa escrever 'lambda'
  index = 0
  puts "Números atual + Próximo número"
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]

my_lambda.call(numbers)
puts '----------------'

#LAMBDA SENDO PASSADA COMO PARAMETRO
def foo(primeira_lambda, segunda_lambda)
  primeira_lambda.call
  segunda_lambda.call
end

primeira_lambda = lambda { puts "Minha primeira lambda" }
segunda_lambda = lambda { puts "Minha segunda lambda" }

foo(primeira_lambda, segunda_lambda)