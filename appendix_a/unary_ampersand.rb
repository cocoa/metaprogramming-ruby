# a Block that is passed to an Array 

(1..3).to_a.each do |x|
  puts x
end


# a Proc assigned to a variable

pro = Proc.new { |x| puts x }


# a method can have only 1 implicit Block argument

def two
  yield 2
end

two &pro              # => 2

two { |x| puts x }    # => 2


# Procs can be defined and referenced in multiple ways

proc_1 = Proc.new {|x| x*2}
proc_2 = proc {|x| x*2}

proc_3 = lambda {|x| x*2}
proc_4 = ->(x){x*2}

[proc_1,proc_2,proc_3,proc_4].each do |x|
  p x.lambda?
end


# inside the method, the passed in block is converted into a proc

def another(&block)
  puts "another.block.class = #{block.class}"
  puts "another.block.arguments = #{block.parameters}"
end

def describe(&block)
  puts "describe.block.class = #{block.class}"
  puts "describe.block.arguments = #{block.parameters}"
  another &block
end

describe{|x| puts x}


# lambda status

l = lambda{|x| x*2}
puts l.lambda?
(1..3).to_a.map(&l)

def describe(&block)
  "block.lambda? -> #{block.lambda?}"
end

describe &proc{}
describe &lambda{}

class A
  define_method :m, &lambda{|x| x*2}
  define_method :q, &proc{|x| x*3}
end

a = A.new
a.m 4
a.q 4



# & unary operator aplied to any other object...
# (1) first #to_proc is called over the obhect
# (2) the proc is converted to a block
#

class AsteriskPrint
  def self.to_proc
    lambda{|x| puts " *> #{x} <*"}
  end
end

['testing', '1','2','3'].map(&AsteriskPrint)




