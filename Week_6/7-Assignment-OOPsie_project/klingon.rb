require_relative 'humanoid.rb'

class Klingon < Humanoid
  attr_reader :strength, :house, :weapon

  def initialize(name:, items:, age: 0, intelligence:, house:)
    @strength = 100
    @house = house
    @weapon = weapon
    items[:weapon] = 1
    super(name: name, items: items, age: age, intelligence: intelligence)
  end

  def take_item(humanoid:, item_string:)
    humanoid.give_item(creature: self, item_string: item_string, quantity: 1)
  end

  # override superclass as Klingons can take items they don't already have
  def receive_item(item:, quantity:)
    if items[item].nil?
      items[item] = quantity
    else
      items[item] += quantity
      puts "#{name} recieved #{quantity} #{item}"
    end
    true
  end

  def battle_cry
    puts "Qapla'"
  end
end

martok = Klingon.new(
  name: "Martok",
  items: {
    cheese: 1,
    compass: 1,
    hat: 2,
  },
  age: 50,
  intelligence: 80,
  house: "House of Martok"
)

picard = Humanoid.new(
  name: "Jean Luc",
  items: {
    hammer: 1,
    compass: 1,
    hat: 2,
  },
  age: 100,
  intelligence: 90,
)
martok.print_items

martok.take_item(humanoid: picard, item_string: "hammer")
martok.take_item(humanoid: picard, item_string: "poo")

martok.print_items
martok.battle_cry
