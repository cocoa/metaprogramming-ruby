# a method that is specific to a single object
# is called a singleton method

str = 'just a regular string'

def str.title?
  self.upcase == self
end

puts str.title?
puts str.methods.grep /title/
puts str.singleton_methods




# define a new class with an instance method
class MyClass
  def my_method;end
end

obj = MyClass.new
obj.my_method

# now we define a 'Singleton Method' on obj
def obj.my_singleton_method;end

# and a 'Singleton Method' on MyClass
def MyClass.my_class_method;end





# discovering eigenclasses
class C
  def a_method
    'C#a_method()'
  end
end

class D < C; end

obj = D.new
obj.a_method

# mokey patching object: 
class Object
  def eigenclass
    class << self;self;end
  end
end

# new singleton method
class << obj
  def a_singleton_method
    'obj#a_singleton_method()'
  end
end

obj.eigenclass.superclass





# class methods
class C
  class << self
    def a_class_method
      'C.a_class_method()'
    end
  end
end










