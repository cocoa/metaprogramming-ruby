module M
  def my_method
    'M#my_method()'
  end
end

class C
  include M
end

class D < C
end

D.new.my_method         # => "M#my_method()" 
D.ancestors             # => [D, C, M, Object, Kernel, BasicObject] 