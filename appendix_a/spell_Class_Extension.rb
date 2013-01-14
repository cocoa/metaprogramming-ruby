# Class Extension
#

class C;end

module M
  def my_method
    'a class method...'
  end
end

#class << C
#  include M
#end

class C
  class << self
    include M
  end
end


p C.singleton_methods
p C.my_method