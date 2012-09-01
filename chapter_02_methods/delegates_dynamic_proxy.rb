require 'delegate'

class Assistant
  def initialize(name)
    @name = name
  end

  def read_email
    "(#{@name}) Its mostly spam."
  end

  def check_schedule
    "(#{@name}) You have a meeting today."
  end

  def method_missing(m,*a)
    "(#{@name}) Someone called method :#{m}..., and it doesnt exist!"
  end
end


class Manager < DelegateClass(Assistant)
  def initialize(assistant)
    super(assistant)
  end

  def attend_meeting
    "Please hold my calls."
  end
end


frank = Assistant.new "Frank"
anne = Manager.new(frank)

p anne.attend_meeting
p anne.read_email
p anne.read