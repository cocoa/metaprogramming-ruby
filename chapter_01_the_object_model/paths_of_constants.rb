module M
  class C
    X = 'a brand new constant'
  end
  C::X
end


# path to an inner constant

M::C::X       # => "a brand new constant" 
M::C.new      # => #<M::C:0x007fc6c49285c8> 


# path to an outer constant

module M
  Y = 'another brand new constant'
  class W
    ::M::Y    # => "another brand new constant" 
  end
end


M.constants   # => [:C, :Y, :W] 