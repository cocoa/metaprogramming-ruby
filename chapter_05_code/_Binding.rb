class Demo
  def initialize(n)
    @secret = n
  end
  def set_secret(nw)
    @secret = nw
  end
  def get_binding
    binding
  end
end

k1 = Demo.new 99
b1 = k1.get_binding
k1.set_secret 111

k2 = Demo.new -3
b2 = k2.get_binding

@secret = "pescado"

p eval "@secret", b1
p eval "@secret", b2
p eval "@secret"