#!/usr/bin/env ruby

class MyClass
  def my_method(my_arg)
    my_arg*2
  end
end

obj = MyClass.new

# method invocation using dot notation
# MyClass#my_method
#
puts obj.my_method(3)

# method invocation sending a message to 'obj'
# Object#send
#
puts obj.send(:my_method,3)