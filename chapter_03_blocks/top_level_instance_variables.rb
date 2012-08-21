# top-level instance variable

@var = 'the top level @var'

def my_method
  @var
end

puts my_method



# you can access a top-level whenever takes the role of self
# when self changes, the top-level instance var is out of scope

class MyClass
  def my_method
    @var = 'This is not the top level @var (new self) !'
  end
end

puts MyClass.new.my_method