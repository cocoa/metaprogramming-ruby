# def add_method_to_class( k , m )
#   get = "def #{m};@hi;end"
#   set = "def #{m}=(value);@hi=value;end"
#   p get 
#   p set
#   k.class_eval get
#   k.class_eval set
# end


def add_method_to_class( k, m )
  k.class_eval{
    define_method "#{m}" do
      instance_variable_get "@#{m}"
    end
    define_method "#{m}=" do |value|
      raise 'Invalid attribute' unless value
      instance_variable_set "@#{m}", value
    end
  }
end


add_method_to_class String, :hello

p String.instance_methods(false).grep /hello/

cadena = String.new
p cadena.hello= 'dummy'
p cadena.hello
p cadena.hello= nil

