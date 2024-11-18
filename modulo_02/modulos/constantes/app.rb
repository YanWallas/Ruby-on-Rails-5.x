require_relative 'pagamento' # Para trazer o modulo para esse arquivo.

include Pagamento 

puts Pagamento::PI #Dessa forma nao precisa do include, pq ja esta avisando qual é o modulo.
puts PI #Essa precisa do include.