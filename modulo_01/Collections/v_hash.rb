hash = {}

3.times do 
  print 'Informe uma chave: '
  key = gets.chomp

  print 'Informe seu valor: '
  value = gets.chomp

  hash[key] = value
end

hash.each do |k, v|
  puts "Uma das chaves é #{k} e o seu valor é #{v}"
end