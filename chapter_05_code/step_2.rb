# add a Kernel method named add_checked_attribute() using
# Kernel#eval() to add a simple validated attribute to a class


# Here is the method that you should implement. 
# (We called the class argument "clazz", because 
# "class" is a reserved keyword.)


def add_checked_attribute(clazz, attribute)
  clazz.class_eval do
    define_method attribute do
      instance_variable_get "@#{attribute}"
    end
    define_method "#{attribute}=" do |value|
      raise 'Invalid attribute' unless value
      instance_variable_set "@#{attribute}" , value
    end
  end
end





# my another working option... (bad clues)
#def add_checked_attribute(clazz, attribute)
#  clazz.send :define_method, attribute do
#    @attribute
#  end
#
#  clazz.send :define_method, "#{attribute}=".to_sym do |value|
#    raise 'Invalid attribute' unless value
#    @attribute = value
#  end
#end



# testing implementation

require 'test/unit'

class Person; end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age)
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_nil_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = nil
    end
  end

  def test_refuses_false_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = false
    end
  end
end

