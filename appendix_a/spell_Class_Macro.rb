# Class Macro
#

class C; end

class << C
  def my_macro(*args)
    "my_macro(#{args.inspect})"
  end
end

p class C
  my_macro :a, :b, :c
end

