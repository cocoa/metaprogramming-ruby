class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    # info = @data_source.get_mouse_info(@id)
    # price = @data_source.get_mouse_price(@id)
    # result = "Mouse: #{info} ($#{price})"
    # return "* #{result}" if price > 100
    # result
    component :mouse
  end

  def cpu
    # info = @data_source.get_cpu_info(@id)
    # price = @data_source.get_cpu_price(@id)
    # result = "Cpu: #{info} ($#{price})"
    # return "* #{result}" if price > 100
    # result
    component :cpu
  end

  def keyboard
    # info = @data_source.get_keyboard_info(@id)
    # price = @data_source.get_keyboard_price(@id)
    # result = "Keyboard: #{info} ($#{price})"
    # return "* #{result}" if price > 100
    # result
    component :keyboard
  end
  
  def component( name )
    info = @data_source.send("get_#{name}_info",@id)
    price = @data_source.send("get_#{price}_info",@id)
    result = "#{name.to_s.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price > 100
    result
  end

end