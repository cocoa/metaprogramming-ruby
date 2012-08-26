# method aliases

class MyClass
  def my_method; 'my_method()'; end
  alias :m :my_method # alias is a keyword, not a method
  alias_method :m2, :my_method
end

obj = MyClass.new   #  => #<MyClass:0x007fce5a86d640> 
obj.my_method       #  => "my_method()" 
obj.m               #  => "my_method()" 
obj.m2              #  => "my_method()" 




# aliased method redefinition
class String
  alias :real_length :length 

  def length
    real_length > 5 ? 'long' : 'short'
  end
end

"War and Peace".length        # => "long" 
"War and Peace".real_length   # => 13