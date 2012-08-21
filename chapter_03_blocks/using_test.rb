# rspec using_test.rb

module Kernel
  def using resource
    begin
      yield if block_given?
    ensure
      resource.send(:dispose)
    end
  end
end


class Resource
  def dispose
    @disposed = true
  end
  def disposed?
    @disposed
  end
end


describe Resource do
  before :each do
    @r = Resource.new
  end  

  it "should dispose the resource after block exec" do
    using(@r) { puts "test" }
    @r.disposed?.should == true
  end

  it "should dispose the resource after exception" do
    begin
      using(@r) { raise "exception" }
    rescue => e
      #...
    end
    @r.disposed?.should == true
  end

end



=begin
require 'test/unit'

class TestUsing < Test::Unit::TestCase
  class Resource
    def dispose
      @disposed = true
    end
    def disposed?
      @disposed
    end
  end

  def test_disposes_of_resources
    r = Resource.new
    using(r) {}
    assert r.disposed?
  end

  def test_disposes_of_resources_in_case_of_exception
    r = Resource.new
    assert_raises(Exception) {
      using(r) {
        raise Exception
      }
    }
    assert r.disposed?
  end
end
=end