class BindingDemo
  def initialize(processor, gpu)
    @processor = processor
    @gpu = gpu
  end

  def bind_data
    binding
  end
end

bind_ref = BindingDemo.new('amd', 'amd')
after_bind_ref = bind_ref.bind_data

p eval('@processor', after_bind_ref, __FILE__, __LINE__)
p eval('@gpu', after_bind_ref, __FILE__, __LINE__)
