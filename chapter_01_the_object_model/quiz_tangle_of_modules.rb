#!/usr/bin/env ruby

module Printable
  def print
    'Printable::print'
  end

  def prepare_cover
    'Printable::prepare_cover'
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
    'Document::format_for_screen'
  end

  def print
    'Document::print'
  end
end

class Book
  include Document
  include Printable

  puts "Book.ancestors # => #{ancestors.inspect}"

end

book = Book.new.print_to_screen
puts book

puts Book.superclass