require_relative 'pagamento'

include Pagamento

puts "Digite a bandeira do cartão:"
b = gets.chomp

puts " Digite a número do cartão:"
n = gets.chomp

puts "Digite o valor da compra:"
v = gets.chomp

puts pagar(b, n, v)#Incluindo o include, nao precisa informar o modulo.

puts Pagamento::pagar(b, n, v)#Se nao fizer o include, tem que informar o modulo.