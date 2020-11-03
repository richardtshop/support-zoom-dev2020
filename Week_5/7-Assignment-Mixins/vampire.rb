require_relative 'monster'

class Vampire < Monster
  attr_reader :animal

  def initialize(name, location, height, animal)
    super(name, location, height)
    @animal = animal
  end

  def scare
    puts "#{name} shows their razor-sharp fangs."
  end

  def transform
    puts "#{name} turns into a #{animal} and flees into the night."
  end

  def attack(quarry, day = false)
    add_quarry(quarry)
    puts "Sneaks behind #{quarry} to take some blood"
    puts "#{name} is blinded by the light! #{quarry} is safe. Watch out at night, they won't forget you..." if day
  end
end
