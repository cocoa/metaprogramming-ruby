# Dynamic Proxy
#

class DynamicProxy
  def initialize(target)
    @proxy_object = target
  end

  def method_missing(name, *args, &block)
    "result: #{@proxy_object.send(name,*args,&block)}"
  end
end

obj = DynamicProxy.new("buenos dias")
p obj
p obj.reverse