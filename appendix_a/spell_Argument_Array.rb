# Argument Array
#
def my_method(*args)
  args.map {|arg| arg.reverse}
end

p my_method('123','ABS','ESP')