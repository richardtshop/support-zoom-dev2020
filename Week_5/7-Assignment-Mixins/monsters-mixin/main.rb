require_relative 'monster'
require_relative 'ghost'
require_relative 'zombie'
require_relative 'vampire'

puts "Demonstrating Monster class"
monster = Monster.new("Barney McGrew", "Forest", 200)
monster.attack("Alan")
monster.see_quarries
monster.attack("Richard")
monster.scare

puts "Demonstrating Ghost class"
ghost = Ghost.new("Cuthbert", "Mansion", 190)
ghost.attack("Alan")
ghost.see_quarries
ghost.scare
ghost.calm(40)
ghost.calm(60)
ghost.scare
ghost.disguise = "cloak"

puts "Demonstrating Zombie class"
zombie = Zombie.new("Dibble", "Supermarket", 140)
zombie.attack("Alan")
zombie.see_quarries
zombie.scare
zombie.decompose(80)
zombie.decompose(30)
zombie.decomposition
zombie.decompose(30)
zombie.scare
zombie.see_allies
zombie.add_ally(ghost)
zombie.add_ally("mark") # Not monster, not added
zombie.see_allies
zombie.strengthen

puts "Demonstrating Vampire class"
vampire = Vampire.new("Grub", "Castle", 178, "Horse")
vampire.attack("Alan")
vampire.see_quarries
vampire.attack("Hugh")
vampire.attack("Hugh", true)
vampire.scare
vampire.see_quarries
vampire.transform
vampire.phase("wall")
vampire.disguise = "hat"
puts vampire.disguise # => hat
