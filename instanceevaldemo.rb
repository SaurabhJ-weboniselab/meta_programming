class InstanceEvalDemo
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

ins = InstanceEvalDemo.new('Alice', 25)
ins.instance_eval do
  self.name = 'mark'
  self.age = 26
end

puts ins.name
puts ins.age
