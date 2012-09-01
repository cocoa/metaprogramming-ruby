#!/usr/bin/env ruby

class MyClass
  # Module#define_method(...)
  define_method :my_method do |my_arg|
    my_arg*3
  end
end

puts MyClass.new.my_method(2)
