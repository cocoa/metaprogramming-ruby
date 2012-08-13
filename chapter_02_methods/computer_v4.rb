class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name,*args,&block)
    puts "Method -> #{self.class}##{name}"
    puts "Arguments -> #{args}"

    super if !@data_source.respond_to?("get_#{name}_info")
    info = @data_source.send("get_#{name}_info",@id)
    price = @data_source.send("get_#{name}_price",@id)
    result = "#{name.to_s.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end
end


class Computer
  def respond_to?(method)
    @data_source.respond_to("get_#{method}_name") || super
  end
end



berry = Computer.new(1,1)
berry.mouse('left','right')