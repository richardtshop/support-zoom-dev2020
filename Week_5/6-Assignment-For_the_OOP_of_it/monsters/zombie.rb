require_relative 'monster'

class Zombie < Monster
  attr_accessor :decomposition

  def initialize(name, location, height)
    super(name, location, height)
    self.decomposition = 0
  end

  def attack(quarry)
    if decomposition < 100
      add_quarry(quarry)
      puts "#{name} shuffles towards #{quarry} to eat brains"
    else
      puts "#{name} is a rotting mess. They can't hurt anyone"
    end
  end

  def scare
    return puts "#{name} is truly dead. But they still look pretty scary" if decomposition == 100
    puts "#{name} groans in your general direction."
  end

  def decompose(percentage)
    return puts "#{name} is fully decomposed. They cannot decompose further." if decomposition >= 100
    self.decomposition = decomposition + percentage >= 100 ? 100 : decomposition + percentage
    puts "#{name} is now #{decomposition}% decomposed"
  end
end
