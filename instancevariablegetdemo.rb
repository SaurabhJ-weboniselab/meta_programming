class InstanceVariableGetDemo
  def initialize(v1, v2)
    @a1 = v1
    @a2 = v2
  end
end

ins = InstanceVariableGetDemo.new(5, 6)
puts "before instance_variable_set @a1 =#{ins.instance_variable_get(:@a1)}"
puts "before instance_variable_set @a2 =#{ins.instance_variable_get(:@a2)}"

ins.instance_variable_set(:@a1, 8)
ins.instance_variable_set(:@a2, 10)

puts "after instance_variable_set @a1 =#{ins.instance_variable_get(:@a1)}"
puts "after instance_variable_set @a2 =#{ins.instance_variable_get(:@a2)}"
