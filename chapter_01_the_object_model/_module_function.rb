# module_function(symbol, ...) → self
#
# Creates module functions for the named methods.
# These functions may be called with the module as a receiver, 
# and also become available as instance methods to classes that 
# mix in the module. 
#
# Module functions are copies of the original,
# and so may be changed independently.
# 
# The instance-method versions are made private. If used with no
# arguments, subsequently defined methods become module functions.

module Mod
  def one
    "this is one"
  end

  module_function :one
end


class Cls
  include Mod
  def call_one
    one
  end
end


Mod.one         # => "this is one" 

c = Cls.new     # => #<Cls:0x007fc8042d4e10> 
c.call_one      # => "this is one"


module Mod
  def one
    "this is the new one..."
  end
end

Mod.one         # => "this is one" 
c.call_one      # => "this is the new one..." 


