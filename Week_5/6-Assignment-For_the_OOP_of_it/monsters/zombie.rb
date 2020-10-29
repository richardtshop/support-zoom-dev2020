require_relative 'monster'

class Zombie < Monster
  attr_accessor :decomposition

  def initialize(name, location, height)
    super(name, location, height)
    self.decomposition = 0
  end

  def attack(quarry)
    if decomposition < 100
      puts "#{name} shuffles towards #{quarry} to eat brains"
      add_quarry(quarry)
    else
      puts "#{name} is a rotting mess. #{quarry} are safe."
    end
  end

  def decompose(percentage)
    return puts "#{name} is fully decomposed. They cannot decompose further." if decomposition >= 100
    self.decomposition = decomposition + percentage >= 100 ? 100 : decomposition + percentage
    puts "#{name} is now #{decomposition}% decomposed"
  end
end

zombie = Zombie.new("Pete", "Bathroom", 195)
zombie.see_quarries
zombie.decompose(90)
zombie.decompose(15)
zombie.decompose(15)
