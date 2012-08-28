# instance_variables → array
#
# Returns an array of instance variable names for the receiver.
#
# Note that simply defining an accessor does not create the 
# corresponding instance variable.

class Fred
  attr_accessor :a1
  def initialize
    @iv = 1
  end
end

fredy = Fred.new
fredy.instance_variables

fredy.a1 = 2
fredy.instance_variables
