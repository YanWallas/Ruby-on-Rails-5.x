#5.times { puts "Exec the block" }# vai executar 5 vezes 

#BLOCKS TAMBEM PODEM RECEBER PARAMETROS
sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number}
puts sum
puts '----------------'

# BLOCKS DE MULTIPLAS LINHAS
foo = {2 => 3, 4 => 5}

foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '-----'
end

#BLOCKS QUE RECEBE UM METODO COMO PARAMETRO 
def foo1
  # Call the block
  yield
  yield
end 

foo1 { puts "Exec the block" }
puts '----------------'

#BLOCKS PODE OU NAO RECEBER PARAMETROS
def foo2
  if block_given? #Vai verificar se passou algum parãmetro para o block
    # Call the block
    yield
  else
    puts "Sem parâmentro do tipo bloco"
  end
end

foo2 #SEM PASSAAR PARAMETRO
foo2 {puts "Com parâmetro de tipo bloco"} #PASSANDO PARAMETRO
puts '----------------'

#BLOCKS COM PARAMENTRO UM BLOCK (PRECISA DO & ANTES DE PASSAR BLOCK)
def foo3(name, &block)
  @name = name
  block.call #precisa chamar call para executar
end 

foo3('Leonardo') { puts "Hellow #{@name}" }
puts '----------------'

#BLOCK COM VARIAS LINHAS COMO PARAMETRO
def foo4(numbers1, &block)
  if block_given?
    numbers1.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers1 = { 2 => 2, 3 => 3, 4 => 4 }

foo4(numbers1) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---------"
end



