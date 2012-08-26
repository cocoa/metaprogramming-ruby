class Book
  def title
  end

  def subtitle
  end

  def self.deprecate( old_method , new_method )
    puts "deprecating #{old_method}() for #{new_method}()"
  end

  deprecate :get_title, :title
  deprecate :get_subtitle, :subtitle
end