# calling a method

class MyClass
  def initialize(value)
    @x = value
  end

  def my_method
    @x
  end
end

# a method is evaluated in the scope of their object
# a lambda is evaluated in the scope it's defined in

object = MyClass.new(1)
method = object.method :my_method
puts method.call