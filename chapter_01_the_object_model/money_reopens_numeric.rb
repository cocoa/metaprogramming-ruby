# install money gem before: gem install money

require 'money'

centimos = 9999
oferta = Money.new(centimos)  # => #<Money cents:9999 currency:USD> 
precio = 100.to_money         # => #<Money cents:10000 currency:USD> 


# details from the Money gem
#
# class Numeric
#   def to_money
#     Money.new(self * 100)
#   end
# end