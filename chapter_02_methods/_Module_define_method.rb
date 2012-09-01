# define_method(symbol, method) → new_method
# define_method(symbol) { block } → proc
#
# Defines an instance method in the receiver. 
# The method parameter can be a Proc, a Method or an UnboundMethod object.
# If a block is specified, it is used as the method body.
# This block is evaluated using instance_eval, a point that is tricky
# to demonstrate because define_method is private. (This is why we resort 
# to the send hack in this example.)

class A
  def fred
    puts "#fred()..."
  end
  def create_method(name, &block)
    self.class.send(:define_method, name, &block)
  end
  define_method(:wilma) { puts "#wilma()..."}
end

a = A.new
a.create_method(:pedro) { puts "#pedro()..."}
