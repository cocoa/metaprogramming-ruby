class MyOpenStruct
  def initialize
    @attributes = {}
  end

  def method_missing(id,*args,&block)
    puts "#{self.class}##{id.to_s}"
    attribute = id.to_s
    if attribute =~ /=$/
      @attributes[attribute.chop] = args[0]
    else
      @attributes[attribute]
    end
  end
end


icecream = MyOpenStruct.new

icecream.flavor = "vainilla"
puts icecream.flavor

puts icecream.inspect