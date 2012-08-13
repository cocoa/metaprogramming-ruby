require 'ruport'

table = Ruport::Data::Table.new :column_names => ['country','wine'],
                                :data => [['France','Bordeaux'],
                                          ['Italy','Chianti'],
                                          ['France','Chablis']]

puts table.to_text

found = table.rows_with_country("France")
found.each do |row|
  puts row.to_csv
end


# inside 'ruport'
# class Table
#   def method_missing(id,*args,&block)
#     return as($1.to_sym, *args, &block) if id.to_s =~ /^to_(.*)/
#     return rows_with($1.to_sym, *args, &block) if id.to_s =~ /^rows_with_(.*)/
#     super
#   end
# end