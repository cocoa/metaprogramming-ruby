class A
  def my_method
    self
  end
end

class B < A
end

# current object
p b = B.new
p b.my_method