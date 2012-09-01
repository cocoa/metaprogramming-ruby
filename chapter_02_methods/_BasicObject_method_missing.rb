# method_missing(symbol [, *args] ) → result
#
# Invoked by Ruby when obj is sent a message it cannot handle.
# symbol is the symbol for the method called, and args are any
# arguments that were passed to it. By default, the interpreter
# raises an error when this method is called. However, it is
# possible to override the method to provide more dynamic behavior.
# If it is decided that a particular method should not be handled,
# then super should be called, so that ancestors can pick up the 
# missing method. 
#
# The example below creates a class Roman, which responds to methods 
# with names consisting of roman numerals, returning the corresponding 
# integer values.

class Roman
  def roman_to_int(str)
    #...
    4
  end
  def method_missing(method)
    p "method_missing(:#{method})"
    str = method.id2name
    roman_to_int(str)
  end
end

p r = Roman.new
p r.iv




class Emperator
end

cesar_augustus = Emperator.new
cesar_augustus.send :method_missing, :work    # exception => undefined method 'work'

