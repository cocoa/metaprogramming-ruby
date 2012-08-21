v1 = 1

class MyClass       # SCOPE GATE: entering class
  v2 = 2
  local_variables

  def my_method     # SCOPE GATE: entering def
    v3 = 3
    local_variables
  end               # SCOPE GATE: leaving def

  local_variables
end                 # SCOPE GATE: leaving class


obj = MyClass.new
puts obj.my_method.inspect
puts local_variables.inspect