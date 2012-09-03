# instance_exec(arg...) {|var...| block } → obj
#
# Executes the given block within the context of the receiver (obj).
# In order to set the context, the variable self is set to obj while 
# the code is executing, giving the code access to obj’s instance variables. 
#
# Arguments are passed as block parameters.

class KlassWithSecret
  def initialize
    @secret = 99
  end
end

k = KlassWithSecret.new

p k.instance_exec(5) { |x| @secret + x }

