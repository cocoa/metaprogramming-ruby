# undef_method(symbol) → self
#
# Prevents the current class from responding to calls to the named method. 
#
# Contrast this with remove_method, which deletes the method from the particular
# class; Ruby will still search superclasses and mixed-in modules for a possible
# receiver.

class Parent
  def hello
    puts "In parent..."
  end
end

class Child < Parent
  def hello
    puts "In child..."
  end
end

c = Child.new
c.hello               # => In child...


# remove_method()

class Child
  remove_method :hello
end

c.hello               # => In parent...


# undef_method

class Child
  undef_method :hello
end

c.hello               # => undefined method `hello'
