# method(sym) → method
#
# Looks up the named method as a receiver in obj, 
# returning a Method object (or raising NameError).
#
# The Method object acts as a closure in obj’s object instance, 
# so instance variables and the value of self remain available.

class Demo
  def initialize(n)
    @iv = n
  end
  def hello
    "Hello, @iv = #{@iv}"
  end
end

k = Demo.new(99)
m1 = k.method :hello
p m1.call

l = Demo.new 'Fred'
m2 = l.method :hello
p m2.call