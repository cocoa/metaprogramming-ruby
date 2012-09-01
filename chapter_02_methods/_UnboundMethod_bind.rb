# bind(obj) → method
#
# Bind umeth to obj. If Klass was the class from which umeth
# was obtained, obj.kind_of?(Klass) must be true.

class A 
  def test
    puts "In test, class = #{self.class}"
  end
end

class B < A
end

class C < B
end

um = B.instance_method(:test)     # => #<UnboundMethod: B(A)#test>

bm = um.bind(C.new)
bm.call                           # => In test, class = C

bm = um.bind(B.new)
bm.call                           # => In test, class = B

bm = um.bind(A.new)
bm.call                           # => TypeError: in `bind': bind argument must be an instance of B