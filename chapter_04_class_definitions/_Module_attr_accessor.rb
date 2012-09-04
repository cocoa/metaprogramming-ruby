# attr_accessor(symbol, ...) → nil
# 
# Defines a named attribute for this module, where the name 
# is symbol.id2name, creating an instance variable (@name) 
# and a corresponding access method to read it.
#
# Also creates a method called name= to set the attribute.
#

module Mod
  attr_accessor :one, :two
end

p Mod.class
p Mod.instance_methods