# instance_variable_get(symbol) → obj
#
# Returns the value of the given instance variable, 
# or nil if the instance variable is not set. 
#
# The @ part of the variable name should be included for regular instance variables.
# 
# Throws a NameError exception if the supplied symbol is not valid as an instance variable name.

class Fred
  def initialize( p1, p2 )
    @a, @b = p1, p2
  end
end

p fred = Fred.new( 'cat' , 101 )
p fred.instance_variable_get "@a"
p fred.instance_variable_get :@b




# instance_variable_set(symbol, obj) → obj 
#
# Sets the instance variable names by symbol to object, 
# thereby frustrating the efforts of the class’s author to attempt to provide proper encapsulation.
#
# The variable did not have to exist prior to this call.
#

fred.instance_variable_set "@a", 'horse'
p fred



