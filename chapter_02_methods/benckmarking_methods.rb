class String
  def method_missing(name, *args)
    name == :ghost_reverse ? reverse : super
  end
end

require 'benchmark'

Benchmark.bm do |b| 
  b.report 'normal' do 
    1000000.times {"abc".reverse}
  end
  b.report '_ghost' do 
    1000000.times {"abc".ghost_reverse}
  end
end

