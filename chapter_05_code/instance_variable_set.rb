# instance_variable_set(symbol, obj) → obj
#
# Sets the instance variable names by symbol to object,
# thereby frustrating the efforts of the class’s author
# to attempt to provide proper encapsulation.
#
# The variable did not have to exist prior to this call.

class Airport
  def initialize( runways , towers )
    @runways = runways
    @towers = towers
  end
end

jfk = Airport.new( 8 , 2 )
jfk.instance_variable_set( :@cafeterias , 23 )