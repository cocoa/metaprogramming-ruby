# instance_variable_get(symbol) → obj
#
# Returns the value of the given instance variable,
# or nil if the instance variable is not set. 
# The @ part of the variable name should be included 
# for regular instance variables. 
#
# Throws a NameError exception if the supplied symbol 
# is not valid as an instance variable name.

class Airport
  def initialize( runways , towers )
    @runways = runways
    @towers = towers
  end
end

jfk = Airport.new( 8 , 2 )
jfk.instance_variable_get( "@runways" )
jfk.instance_variable_get( :@towers )