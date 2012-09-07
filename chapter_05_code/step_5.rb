require 'test/unit'


=begin
#
# Class Extension
#

module CheckedAttributes
  def attr_checked( attribute, &validation )
    define_method "#{attribute}" do
      instance_variable_get "@#{attribute}"
    end
    define_method "#{attribute}=" do |value|
      raise 'Invalid attribute' unless validation.call value
      instance_variable_set "@#{attribute}", value
    end
  end
end


class Person
  # different from previous versions
  extend CheckedAttributes

  attr_checked :age do |v|
    v >= 18
  end
end
=end


#
# Class Extension + Hook Methods
#

module CheckedAttributes
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def attr_checked( attribute, &validation )
      define_method "#{attribute}" do
        instance_variable_get "@#{attribute}"
      end
      define_method "#{attribute}=" do |value|
        raise 'Invalid attribute' unless validation.call value
        instance_variable_set "@#{attribute}", value
      end
    end
  end
end

class Person
  # different from previous versions
  include CheckedAttributes

  attr_checked :age do |v|
    v >= 18
  end
end





class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    @bob = Person.new
  end
  def test_acepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end
  def test_refuses_invalid_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = 17
    end
  end
end

