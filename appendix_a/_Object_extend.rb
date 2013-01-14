# extend(module, ...) → obj
#
# Adds to obj the instance methods from each module given as
# a parameter.
#

module Mod
  def hello
    "Hello from Mod"
  end
end

class Klass
  def hello
    "Hello from Klass"
  end
end

k = Klass.new
p k.hello

k.extend(Mod)
p k.hello