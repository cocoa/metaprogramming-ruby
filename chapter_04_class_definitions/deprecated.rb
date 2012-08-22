class Book
  def title
    'this is the first title'
  end

  def subtitle
    'this is the second title'
  end

  # Module#define_methods() allow dynamic method definition

  def self.deprecated( old_method , new_method )
    define_method old_method do | *args , &block |
      warn "WARNING: #{old_method}() is deprecated by #{new_method}()"
      send new_method , *args , &block
    end
  end

  deprecated :first_title, :title
  deprecated :second_title, :subtitle

end

puts Book.public_instance_methods(false).inspect