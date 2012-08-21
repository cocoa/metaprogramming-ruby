# use case of a method call with a block
def a_method(a,b)
  a + yield(a,b)
end

puts a_method(1,2) {|x,y| (x+y)*3 }



# the method checks for a block, if the block is given
# it calls back to the block with the 'yield' keyword
def check_for_block
  return yield if block_given?
	'no block'
end

puts check_for_block {'here is your block'}
puts check_for_block