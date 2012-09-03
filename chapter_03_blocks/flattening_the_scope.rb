
my_var = 'Success'

# class MyClass
#   def my_method
#   end
# end


# flattening the scope inside the class definition
MyClass = Class.new do
  
  puts "#{my_var} in the class definition"

  define_method :my_method do
    puts "#{my_var} in the method definition"
  end
end

MyClass.new.my_method