# gem install money
require 'money'

centimos = 9999
oferta = Money.new(centimos)
precio = 100.to_money

puts oferta.inspect
puts precio.inspect


# details from the Money gem
#
# class Numeric
#   def to_money
#     Money.new(self * 100)
#   end
# end