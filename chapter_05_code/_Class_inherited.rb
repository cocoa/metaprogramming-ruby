# inherited(subclass)
#
# Callback invoked whenever a subclass of the current class is created.
#

class Foo
  def self.inherited(subclass)
    puts "New subclass: #{subclass}"
  end
end

class Bar < Foo; end

class Baz < Bar; end
