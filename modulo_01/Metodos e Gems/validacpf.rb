require "cpf_cnpj"

print 'Digite seu CPF: '
number = gets.chomp

# Verificar se o CPF é válido
if CPF.valid?(number)
  cpf = CPF.new(number)
  puts "CPF formatado: #{cpf.formatted}"  # Retorna CPF formatado
  puts "CPF sem formatação: #{cpf.stripped}"  # Retorna CPF sem formatação
  puts "CPF é válido." 
else
  puts "CPF inválido."
end

# OUTRA FORMA USANDO METODO

def check_cpf(cpf_number)
  if CPF.valid?(cpf_number)
    return "O cpf informado é valido"
  else
    return "O cpf informado é invalido"
  end
end

print 'Digite seu cpf: '
cpf_number = gets.chomp

result = check_cpf(cpf_number)

puts result