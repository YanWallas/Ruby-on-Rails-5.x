puts '--Lista de Compras--'

file = File.open('shopping-list.txt') #Lendo arquivo txt

file.each do |line| #repetição que vai passar em casa linha do arquivo.
  puts line # vai imprimir e mostrar na tela. 
end