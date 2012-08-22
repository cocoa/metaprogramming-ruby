class MyClass
  puts "Hello buddy!"
end


# inside class definitions, the class itself takes the 
# role of the current object 'self'
result = class MyNewClass
  self
end

puts result



# class_eval() evaluates a block in the context of an
# existing class
def add_method_to(a_class)
  a_class.class_eval do
    def m; 'Hello inside a method'; end 
  end
end

add_method_to(MyClass)
add_method_to(String)
puts "abc".m