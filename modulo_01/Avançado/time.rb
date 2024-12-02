time = Time.now

puts time
puts time.class
puts time.year #pega o Ano
puts time.day # Pega dia 

puts time.strftime('%d/%m/%y') #configurando data

time2 = Time.now #Criando outra data

puts time == time2 #Comparando as datas