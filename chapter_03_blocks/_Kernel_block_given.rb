# block_given? → true or false
#
# Returns true if yield would execute a block in the current context.

def try
  if block_given?
    yield
  else
    "no block"
  end
end


try
try { puts " { puts 'hello' } " }
try do puts " do puts 'hello' end" end