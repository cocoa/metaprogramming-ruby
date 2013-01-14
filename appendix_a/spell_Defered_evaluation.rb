# Defered evaluation
#

class C
  attr_accessor :plus

  def initialize(plus)
    @plus = plus
  end

  def store(&block)
    @my_code_capsule = block
  end

  def execute
    @my_code_capsule.call(@plus)
  end
end

@plus = 1
obj = C.new(10)

obj.store { |var| $X = var } 
# obj.store { |var| $X = @plus }  

obj.plus= 20

obj.execute
p obj
p $X