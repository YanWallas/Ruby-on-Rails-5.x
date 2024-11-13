# Strings com aspas "" ou '', sao consideradas strings, porem tem uma diferença.
# << - Modifica a varivel (juntando)
# + - gera um novo objeto sempre que usado. 
# #{} - Interpolação de string.

x = "Wallas"
y = 'Almeida'

# exemplo de interpolação.
puts "#{x} é da class #{x.class}"
puts "#{y} tbm é da class #{y.class}"
puts "*****************"

# Concatenação de strings 

a = "Curso"
b = " Rails"

puts a + b # apenas juntando os dois.
puts a << b # Pegando 'b' e jogando dentro do 'a'(modifica 'a)
puts "*****************"

z = "curso"
puts z.object_id
z = z + "rails"

puts z
puts z.object_id

puts "###########"

q = "curso de "
puts q.object_id
q << "rails"

puts q 
puts q.object_id
