class Y
  def a
    x
  end
  private
  def x
    puts "hi"
  end
end
 
Y.new.a
