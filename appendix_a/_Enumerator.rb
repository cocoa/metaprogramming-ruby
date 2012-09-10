=begin
A class which allows both internal and external iteration.

An Enumerator can be created by the following methods.

Kernel#to_enum
Kernel#enum_for
::new

Most methods have two forms: a block form where the contents are evaluated 
for each item in the enumeration, and a non-block form which returns a new 
Enumerator wrapping the iteration.
=end


# 1: a block form where the contents are evaluated 
# for each item in the enumeration
#

enumerator = %w(a b c).each
p enumerator.class

enumerator.with_object("foo") do |element,object|
  puts "#{object}: #{element}"
end


# 2: a non-block form which returns a new 
# Enumerator wrapping the iteration.
#

enum_with_obj = enumerator.with_object "foo"
enum_with_obj.each do |element, object|
    puts "#{object}: #{element}"
end
