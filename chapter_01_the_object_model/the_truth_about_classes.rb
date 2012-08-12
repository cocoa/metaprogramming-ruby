#!/usr/bin/env ruby

# class definition
class MyClass
  def my_method
    @v = 1
  end
end

# we create here a new object
obj = MyClass.new
puts obj.class

# obj instance variables
obj.my_method
puts obj.instance_variables.inspect

# obj methods (filtered)
puts obj.methods.grep(/^my/).inspect