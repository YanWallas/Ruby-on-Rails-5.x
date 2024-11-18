require 'cpf_utils'

#cpf = CpfUtils.cpf_formatado #vai trazer cpf formatado.
#puts cpf

puts "Digite um CPF:"
cpfs = gets.chomp

validade = CpfUtils.valid_cpf?(cpfs) # true

if validade == true 
  puts "CPF: #{cpfs.to_cpf_format} é valido!!"
else 
  puts "CPF: #{cpfs} não é valido!!"
end