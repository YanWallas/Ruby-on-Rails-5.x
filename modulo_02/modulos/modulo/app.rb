require_relative 'pagamento'

include Pagamento::Master #Incluindo modulo, dentro do modulo.

puts Pagamento::Master::pagando #imprimindo metodo que esta  do modulo Master, Master esta dentro do modulo Pagamento.