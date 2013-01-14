# Class Extension Mixin (whitout using Hooks)
#

module ClassMethods
  def my_method
    'a class method'
  end
end

class C;end

C.extend(ClassMethods)

p C.singleton_methods
p C.my_method



# The same concept but in this case using Hook ClassMethods
#

module M
  def self.included(base)
    puts "help!, I'm being included by #{base}"
    base.extend(ClassMethods)
  end
  module ClassMethods
    def my_method
      'b class method'
    end
  end
end

class D
  include M
end

p D.singleton_methods
p D.my_method


