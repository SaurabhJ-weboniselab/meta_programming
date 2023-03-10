class Person
  def method_missing(name, *args)
    puts "you called #{name} method with args #{args.inspect}"
  end
end

meth = Person.new
meth.something
