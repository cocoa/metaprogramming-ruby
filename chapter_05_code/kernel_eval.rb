# Kernel#eval()

array = [10,20]
element = 30
eval( "array << element")


map = {
  "update" => "deploy:update",
  "restart" => "deploy:restart",
  "cleanup" => "deploy:cleanup"
}

map.each do |key,value|
  warn "key: #{key}, value: #{value}"
end


