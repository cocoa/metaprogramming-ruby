# class, module and def keywords define new scopes
# global vars may be accessed by any scope

def a_scope
  $var = 'some value'
end

def another_scope
  $var
end

puts a_scope
puts another_scope

puts "global_variables: #{global_variables.grep /var/} ..."