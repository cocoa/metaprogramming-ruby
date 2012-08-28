3.times do |i|
  puts "#{i+1} iteration"
  class C
    puts "Hola"
  end
end

# class definition
class A
  def b;'b';end
end

# it reopens previous class definition
class A
  def c;'c';end
end

obj = A.new
obj.b
obj.c