#!/usr/bin/env rspec


def replace( array, from, to)
  array.each_with_index do |e,i|
    array[i] = to if e == from
  end
end

describe "Replace" do
  it "should replace elements in an array" do
    book_topics = ['java','html5','ruby']
    expected = ['java','javascript','ruby']
    replace(book_topics, 'html5', 'javascript').should == expected
  end
end


# monkey patching

class Array
  def replace(from, to)
    self.each_with_index do |e,i|
      self[i] = to if e == from
    end
  end
end

describe Array do
  it "#replace" do
    ['java','html5','ruby'].replace('html5','javascript').should == ['java','javascript','ruby']
  end
end

