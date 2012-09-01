# instance_method(symbol) → unbound_method
# 
# Returns an UnboundMethod representing the given instance method in mod.

class Interpreter
  def do_a() print "Application "; end
  def do_i() print "Interface "; end
  def do_p() print "Programming "; end
  DISPATCHER = {
    'a' => instance_method(:do_a),
    'p' => instance_method(:do_p),
    'i' => instance_method(:do_i)
  }
  def translate(string)
    string.each_char { |c| DISPATCHER[c].bind(self).call }
  end
end


interpreter = Interpreter.new
interpreter.translate('api')