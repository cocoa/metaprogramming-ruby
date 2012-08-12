# $ rspec open_classes.rb

# a simple method
def to_alphanumeric( s )
  s.gsub /[^\w\s]/, ''
end

describe "to_alphanumeric" do  
  it "should strip non alphanimeric characters" do
     to_alphanumeric('A**B+++C...').should == 'ABC'
  end
end


# apply monkey patching to the String Class
class String
  def to_alphanumeric
    self.gsub /[^\w\s]/, ''
  end
end

describe String do  
  it "#to_alphanumeric" do
     'A**B+++C...'.to_alphanumeric.should == 'ABC'
  end
end