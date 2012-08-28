class MyClass
  def testing_self
    @var=10
    my_method
    self
  end

  def my_method
    @var=@var+1
  end
end


MyClass.new.testing_self    # => #<MyClass:0x007fab8183c320 @var=11> 