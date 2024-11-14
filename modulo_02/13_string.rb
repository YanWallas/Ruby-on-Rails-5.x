# Reabrindo uma class ja existente. 
class String
  def inverter
    self.reverse # Vai pegar o proprio object, e fazer reverse.
  end
end

puts "yan".inverter #vai identificar o texto como class, e abricar o metodo. 