require_relative 'monster'

class Ghost < Monster
  attr_accessor :anger

  def initialize(name, location, height)
    super
    @anger = 100
  end

  def attack(quarry)
    add_quarry(quarry)
    puts "#{name} appears out of nowhere! #{quarry} better run!"
  end

  def scare
    return puts "#{name} is calm. They don't want to scare." if anger <= 0
    puts "Woooooooooooo!"
  end

  def calm(amount)
    self.anger -= amount if amount.is_a?(Integer)
    if anger <= 0
      self.anger = 0
      find_peace
    else
      puts "#{name} is calmer, they are not only #{anger}% angry"
    end
  end

  private

  def find_peace
    quarries.clear
    puts "#{name} has found peace, and won't be haunting anyone any more!"
  end
end
