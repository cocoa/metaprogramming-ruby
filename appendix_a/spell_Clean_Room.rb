# Clean Room
#

class CleanRoom
  def a_useful_method(x)
    x*2
  end
end

p CleanRoom.new.instance_eval { a_useful_method(10) }