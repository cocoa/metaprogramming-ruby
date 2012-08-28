# private_instance_methods(include_super=true) → array
#
# Returns a list of the private instance methods defined in mod.
# If the optional parameter is not false, the methods of any 
# ancestors are included.

module Mod
  def method1;end
  private :method1

  def method2;end
end

Mod.private_instance_methods    # => [:method1] 
Mod.instance_methods            # => [:method2] 

Mod.ancestors                   # => [Mod] 


# defining a module_function... (see: Module#module_function() )

module Express
  def method1
    "call to method1() [module version...]"
  end
  module_function :method1
  def method2;end
end

Express.private_instance_methods    # 
Express.instance_methods            #

Express.method1                     #
