# Two new Kernel methods in a shared scope.
# No other method can see shared, because its protected by
# a scope gate (def)

def define_methods
  shared = 0

  Kernel.send :define_method, :counter do
    shared
  end

  Kernel.send :define_method, :inc do |x|
    shared += x
  end
end


define_methods

puts counter
puts inc(10)
puts counter
