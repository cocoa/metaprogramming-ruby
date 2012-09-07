puts 'Hello world!'   # => ruby eloquence

class C
  def my_attribute=(value)
    @p = value
  end
  def my_attribute
    @p
  end
end

obj = C.new
obj.my_attribute= 'some text...'    # => this is a mimic method
obj.my_attribute

p obj