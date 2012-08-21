def event(name, &block)
  @events[name] = block
end

def setup(&block)
  @setups << block
end

Dir.glob('*events.rb').each do |file|
  @setups = []
  @events = {}
  load file
  puts @setups.inspect
  puts @events.inspect
end
