require_relative 'humanoid.rb'

class Borg < Humanoid
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
