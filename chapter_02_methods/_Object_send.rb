# send(symbol [, args...]) → obj
# __send__(symbol [, args...]) → obj
#
# Invokes the method identified by symbol, passing it 
# any arguments specified. 
#

class Klass
  def hello( *args )
    'hola ' + args.join(' ')
  end
end

c = Klass.new
c.send :hello, "guinea" , "ecuatorial"



# You can use __send__ if the name send clashes with 
# an existing method in obj.

class Klass
  def send(*args)
    'Klass#send()...'
  end
end

c.send :hello, "guinea" , "ecuatorial"
c.__send__ :hello, "nueva", "zelanda"
