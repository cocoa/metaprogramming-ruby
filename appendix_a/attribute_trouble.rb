class MyClass
  attr_accessor :my_attr
  def initialize_attributes
    my_attr = 10
  end
end

MyClass.instance_methods(false).each {|m| puts m}

obj = MyClass.new
obj.initialize_attributes
p obj
p obj.my_attr           # => something is wrong... local var ooscope


class MyClass
  def initialize_attributes
    self.my_attr= 10    # => call method on the receiver obj.my_attr=()
  end
end
obj.initialize_attributes
p obj                   # => #<MyClass:0x1065e7930 @my_attr=10>
