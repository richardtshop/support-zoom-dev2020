class Humanoid
  attr_reader :name, :items, :age, :intelligence

  def initialize(name:, items:, age: 0, intelligence:)
    @name = name
    @items = items
    @age = age
    @intelligence = intelligence
  end

  def move(destination)
    puts "#{name} moves to the #{destination}."
  end

  def speak(words)
    puts "#{name} says: #{words}"
  end

  def give_item(creature:, item_string:, quantity:)
    item = item_string.to_sym
    if items[item].nil? || items[item].zero?
      puts "#{name} doesn't have any #{item}s to give #{creature.name}"
    else
      quantity_to_give = items[item] >= quantity ? quantity : items[item]
      accepted = creature.receive_item(item: item, quantity: quantity_to_give)
      if accepted
        items[item] -= quantity_to_give
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

  def to_s
    "#{name} is a #{self.class}, they are #{age} years old and their intelligence level is #{intelligence}/100."
  end
end
