require_relative 'humanoid.rb'

class Borg < Humanoid
  attr_reader :implants, :adapted

  def initialize(name:, items:, age: 0, intelligence:)
    implant_count = rand(1..10)
    items[:implants] = implant_count
    @adapted = false
    super(name: name, items: items, age: age, intelligence: intelligence)
  end

  def assimilate(humanoid:, borg_name:)
    puts "Resistance is futile"
    puts humanoid.class
    if humanoid.class == Borg
      puts "#{humanoid.name} is already a #{humanoid.class}"
      humanoid
    elsif humanoid.ancestors.include?(Humanoid)
      Borg.new(
        name: borg_name,
        items: humanoid.items,
        age: humanoid.age,
        intelligence:  humanoid.intelligence / 3,
      )
    else
      puts "Assimilation failed"
      humanoid
    end
  end

  def adapt
    adapt_string = "#{name} has adapted!"
    return adapt_string if adapted
    adaptation_chance = 30
    threshold = rand(100)
    1.upto(3) do
      puts "Attempting to adapt..."
      sleep(0.3)
    end

    if adaptation_chance >= threshold
      @adapted = true
      adapt_string
    else
      "Failed to adapt."
    end
  end
end

# picard = Borg.new(
#   name: "Jean Luc",
#   items: {
#     hammer: 1,
#     compass: 1,
#     hat: 2,
#   },
#   age: 100,
#   intelligence: 90,
# )

# queen = Borg.new(
#   name: "Borg Queen",
#   items: {
#     hammer: 1,
#     compass: 1,
#     hat: 2,
#   },
#   age: 100,
#   intelligence: 100
# )

# puts picard.class

# picard = queen.assimilate(humanoid: picard, borg_name: "Locutus")

# puts "WHAT!: #{picard.name}"

# puts queen.adapt
