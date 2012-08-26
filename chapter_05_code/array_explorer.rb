def explore_array(method)
  code = "['a','b','c'].#{method}"
  puts "Evaluating: #{code}"
  eval code
end

loop { p explore_array(gets()) }

# test cases
find_index('b')
map! {|e| e.next}
object_id; Dir.glob("*")