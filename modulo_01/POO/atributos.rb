#class Dog 
#  def name 
#    @name 
#  end 
#
#  def name= name 
#    @name = name 
#  end 
#end 

#dog = Dog.new 
#dog.name = "Marlon"
#puts dog.name

#OUTRA FORMA DE FAZER MAIS RAPIDO
class Dog1
  attr_accessor :name, :age
end

dog = Dog1.new 
dog.name = "Wallas"
puts dog.name 

dog.age = "1 Ano"
puts dog.age