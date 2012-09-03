# instance_eval(string [, filename [, lineno]] ) → obj
# instance_eval {| | block } → obj
#
# Evaluates a string containing Ruby source code, or the given block, 
# within the context of the receiver (obj). 
#
# In order to set the context, the variable self is set to obj while 
# the code is executing, giving the code access to obj’s instance variables. 
# 
# In the version of instance_eval that takes a String, the optional second and 
# third parameters supply a filename and starting line number that are used 
# when reporting compilation errors.

class KlassWithSecret
  def initialize
    @secret = 99
  end
end

k = KlassWithSecret.new

k.instance_eval do
  p self
  p @secret
end

# FLAT SCOPE
var = 2
k.instance_eval { @var = var }
p k.instance_eval { @var }


