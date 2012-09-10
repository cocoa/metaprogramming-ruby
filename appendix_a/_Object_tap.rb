# tap{|x|...} → obj
# 
# Yields x to the block, and then returns x. 
# 
# The primary purpose of this method is to “tap into” a method chain,
# in order to perform operations on intermediate results within the chain.
# 

# implementation
class Object
  def taptap
    yield self if 
    self
  end
end


(1..10)               .tap {|x| puts "original: #{x.inspect}"}\
.to_a                 .tap {|x| puts "array: #{x.inspect}"}\
.select {|x| x%2==0}  .tap {|x| puts "evens: #{x.inspect}"}\
.map { |x| x*x }      .tap {|x| puts "squares: #{x.inspect}"}