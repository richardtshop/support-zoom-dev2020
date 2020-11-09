require_relative 'humanoid.rb'

class Human < Humanoid
  def replicate(factor)
    @items = items.transform_values { |value| value * factor }
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
  intelligence: 100
)

picard.print_items

picard.replicate(2)

picard.print_items
