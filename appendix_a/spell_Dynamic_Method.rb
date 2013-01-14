# Dinamic Method
#

class C;end

C.class_eval do 
  define_method :my_method do
    "this is a dynamic method..."
  end
end

def define_another_method_in(klass)
  klass.class_eval do 
    define_method :another_method do
      "this is another dynamic method..."
    end
  end
end

define_another_method_in(C)

p C.instance_methods(false)