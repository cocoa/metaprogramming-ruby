# Blank Slate
#

class C
  def method_missing(name, *args)
    "a Ghost method"
  end
end

obj = C.new
p obj.to_s


# Generating a Blank State in the C class
#

puts "> before Module#undef_method():"
p C.instance_methods

class C
  instance_methods.each do |m|
    # puts m if m.to_s =~ /method_missing|respond_to?|^__/
    undef_method m unless m.to_s =~ /method_missing|respond_to?|^__/
  end
end

puts "> after Module#undef_method():"
p C.instance_methods


p obj.to_s
