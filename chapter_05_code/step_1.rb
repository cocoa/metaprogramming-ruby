# add a Kernel method named add_checked_attribute() using
# Kernel#eval() to add a simple validated attribute to a class


# Here is the method that you should implement. 
# (We called the class argument "clazz", because 
# "class" is a reserved keyword.)


def add_checked_attribute(clazz, attribute)
  text = %Q{
    class #{clazz}
      def #{attribute}
        @#{attribute}
      end
      
      def #{attribute}=(value)
        raise 'Invalid attribute' unless value
        @#{attribute}=value
      end
    end
    }
  # puts text
  eval(text)
end


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

