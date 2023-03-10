class MacroDemo
  def self.has_properties(*properties)
    properties.each do |prop|
      define_method(prop) do
        instance_variable_get("@#{prop}")
      end

      define_method("#{prop}=") do |value|
        instance_variable_set("@#{prop}", value)
      end
    end
  end

  has_properties :name, :age
end

class ChildClass < MacroDemo
end

obj = ChildClass.new
obj.name = 'John Doe'
obj.age = 30

puts obj.name
puts obj.age
