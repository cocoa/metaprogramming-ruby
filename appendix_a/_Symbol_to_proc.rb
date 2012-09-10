# Symbol#to_proc()

p names = ['bob', 'bill', 'heather']
p names.map {|name| name.capitalize }


# method you wanna call
# :capitalize
# { |x| x.capitalize }

class Symbol
  def to_proc
    Proc.new { |x| x.send(self) }
  end
end

names.map(&:capitalize.to_proc)