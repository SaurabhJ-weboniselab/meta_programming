class ClassEvalDemo
  def self.add_method(method_name)
    class_eval do
      define_method method_name do
        "Hello my name is #{@name} and my age is #{@age}"
      end
    end
  end

  def initialize(name, age)
    @name = name
    @age = age
  end
end

ins = ClassEvalDemo.new('Alice', 25)

ClassEvalDemo.add_method('introduction')
puts ins.introduction
