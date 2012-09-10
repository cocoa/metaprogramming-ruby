# Around Alias
#

class String
  alias :old_reverse :reverse 

  def reverse
    "#{self}.reverse() -> #{old_reverse}"
  end
end

p "call me maybe".reverse
