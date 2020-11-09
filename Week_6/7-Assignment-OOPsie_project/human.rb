require_relative 'humanoid.rb'

class Human < Humanoid
  attr_reader :job

  def initialize(name:, items:, age: 0, intelligence:, job:)
    unique_item = "medicine"
    items[unique_item.to_sym] = 1
    @job = job
    super(name: name, items: items, age: age, intelligence: intelligence)
  end

  def replicate_items(factor)
    @items = items.transform_values { |value| value * factor }
  end

  def become_emotional
    puts "#{name} lets their emotions get the better of them, but somehow this end up working out for the best."
  end

  def manoeuvre
    success_threshold = rand(1..100)
    puts "#{name} attempts to use the #{name} manoeuvre. It requires an intelligence of #{success_threshold}."
    if intelligence >= success_threshold
      puts "Success!"
    else
      puts "Oh no, #{intelligence} intelligence is not high enough to pull of this risky manoeuvre"
    end
  end
end

picard = Human.new(
  name: "Jean Luc",
  items: {
    hammer: 1,
    compass: 1,
    hat: 2,
  },
  age: 100,
  intelligence: 90,
  job: "Captain"
)

picard.print_items

picard.replicate_items(2)

picard.print_items

picard.become_emotional
picard.manoeuvre
