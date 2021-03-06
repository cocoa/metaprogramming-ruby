class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    # to avoid bugs derived from unwanted calls
    super unless %w[Bob Frank].include? person
    # -----------------------------------------
    number = 0
    3.times do 
      number = rand(10) + 1
      puts "#{number}"
    end
    "#{person} got a #{number}" 
  end
end

number_of = Roulette.new
puts number_of.bob
puts number_of.frank
puts number_of.dolores      # => `method_missing': undefined method `dolores'
