class InstanceVariableGetDemo
  def initialize(v1, v2)
    @a1 = v1
    @a2 = v2
  end
end

ins = InstanceVariableGetDemo.new(5, 6)
puts ins.instance_variable_get(:@a1)
puts ins.instance_variable_get(:@a2)
