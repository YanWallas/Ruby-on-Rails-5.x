File.open('shopping-list.txt', 'a') do |line|
  line.puts('arroz') #puts pula linha depois de executar
  line.puts('feijão')
  line.print('azeite') #print nao pula linha 
  line.print(' de ')
  line.print('oliva')
end