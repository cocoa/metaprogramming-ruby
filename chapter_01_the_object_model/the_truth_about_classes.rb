# class definition
class MyClass
  def my_method
    @v = 1
  end
end


# we create here a new object
obj = MyClass.new         # => #<MyClass:0x007fe9dc8ff278>
obj.class                 # => MyClass 


# obj instance variables
obj.my_method             # => 1
obj.instance_variables    # => [:@v] 


# obj methods (filtered)
obj.methods.grep(/^m/)    # => [:my_method, :methods, :method] 