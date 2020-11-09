class Creature
  attr_reader :name, :items, :age, :rank

  def initialize(name:, items:, age: 0, rank:)
    @name = name
    @items = items
    @age = age
    @rank = rank
  end

  def move(destination)
    puts "#{name} moves to the #{destination}."
  end

  def speak(words)
    puts "#{name} says: #{words}"
  end

  def give_item(creature:, item_string:, quantity:)
    item = item_string.to_sym
    if items[item].nil?
      puts "#{name} doesn't have any #{item}s to give #{creature.name}"
    else
      quantity_to_give = items[item] >= quantity ?  quantity : items[item]
      accepted = creature.receive_item(item: item, quantity: quantity_to_give)
      if accepted
        items[item] -= quantity
        puts "#{name} gave #{quantity_to_give} #{item} to #{creature.name}"
        puts "(Only #{quantity_to_give} #{item} were available to give)" if quantity_to_give < quantity
      else
        puts "#{creature.name} was unable to accept #{quantity_to_give} #{item} from #{name}."
      end
    end
  end

  def receive_item(item:, quantity:)
    unless items[item].nil?
      items[item] += quantity
      puts "#{name} recieved #{quantity} #{item}"
      return true
    end
    false
  end

  def print_items
    puts "#{name} has the following items:"
    items.each_pair { |key, value| puts "#{key}: #{value}" }
  end
end

picard = Creature.new(
  name: "Jean Luc",
  items: {
    log: 2,
    phaser: 3,
    teacup: 1,
  },
  age: 100,
  rank: "Captain"
)

data = Creature.new(
  name: "Data",
  items: {
    cat: 1,
    phaser: 1,
    tricorder: 1,
  },
   age: 34,
  rank: "Lieutenant"
)

picard.print_items
picard.move("Ready room")
picard.speak("Engage!")

picard.give_item(
  creature: data,
  item_string: "phaser",
  quantity: 4
)

puts data.items
