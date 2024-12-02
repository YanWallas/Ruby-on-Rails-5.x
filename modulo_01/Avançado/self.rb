class Foo
  attr_accessor :teste 
  def bar
    puts self #Representa sua propria instancia que lhe chamou
  end
end 

foo = Foo.new
puts foo
foo.bar 

puts '--------'

class Foo1
  def self.bar1
    puts self
  end
end

Foo1.bar1

puts '--------'

class Pen 
  attr_accessor :color
  def pen_color
    puts "The color is " + self.color
  end
end

pen = Pen.new
pen.color = "blue"
pen.pen_color