class Foo
  def call_private(instance)
    instance.bar
  end 

  protected

  def bar 
    puts "protected method"
  end 
end

instance_1 = Foo.new 

instance_2 = Foo.new

instance_1.call_private(instance_1)

instance_1.call_private(instance_2)