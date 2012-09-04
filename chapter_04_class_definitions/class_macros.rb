# Module#define_method()
# Defines an instance method in the receiver.
#

class Book
  attr_accessor :title, :subtitle

  def initialize( title, subtitle )
    @title = title
    @subtitle = subtitle
  end

  def self.deprecate_accessor(old_method, new_method)
    define_method old_method do |*args, &proc|
      warn "Warning: #{old_method}() is deprecated; use #{new_method}() instead..."
      send new_method, *args, &proc
    end

    define_method "#{old_method}=".to_sym do |*args, &proc|
      warn "Warning: #{old_method}() is deprecated; use #{new_method}() instead..."
      send "#{new_method}=".to_sym, *args, &proc
    end
  end

  deprecate_accessor :first , :title
  deprecate_accessor :second , :subtitle
end


p Book.instance_methods(false)
b = Book.new 'Hawking', 'Numbers'
p b
p b.first
p b.second


#Book.deprecate :tormenta, :storm
#p Book.instance_methods(false)