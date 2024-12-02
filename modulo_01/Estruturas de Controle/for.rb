fruits = ["Maça", "Uva", "Morango", "Tomate"]
count = 1

for frut in fruits
  puts frut
  puts count
  count = count + 1
end
puts "________________"

# WHILE
x = 1
while x <= 10
  puts x
  x += 1
end
puts "________________"

# LOOP
cont = 1

loop do 
  puts cont
  break if cont == 10
  cont += 1
end
puts "________________"

# TIMES
10.times do
  puts "Hello Word"
end