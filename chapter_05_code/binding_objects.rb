# return a binging to evaluate in the object scope

class MyClass
  def my_method
    @x = 1
    binding
  end
end

obj = MyClass.new
b = obj.my_method
eval ("@x" , b)   # => 1



# TOPLEVEL_BINDING

class AnotherClass
  def my_method
    eval "self", TOPLEVEL_BINDING
  end
end

AnotherClass.new.my_method