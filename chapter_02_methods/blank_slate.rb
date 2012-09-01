class BlankSlate

  class << self
    attr_accessor :hidden_methods
  end

  def self.hide(method)
    
    if method !~ /^(__|instance_eval)/
      @hidden_methods ||= {}
      @hidden_methods[method.to_sym] = instance_method(method)
      undef_method(method)
    end

  end
  
  instance_methods.each { |method| hide(method) }

end


puts "remaining instance methods: #{BlankSlate.instance_methods.inspect}"
puts "hidden methods: #{BlankSlate.hidden_methods.keys.inspect}"


# deriving directly from BasicObject
# class V < BasicObject
# end
# V.instance_methods # =>  => [:==, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__] 

# a = 20
# a ||= 10
# p a