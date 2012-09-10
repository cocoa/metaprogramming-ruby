
def my_method(*args)
  args
end

p my_method :a => 'X', :b => 100, :c => 'Y'   # => {:b=>100, :c=>"Y", :a=>"X"}

p my_method 'first', 2, :a => 'X', :b => 1    # => ["first", 2, {:b=>1, :a=>"X"}]


