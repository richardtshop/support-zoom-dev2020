class Domino
  attr_reader :top, :bottom

  DOMINO_PATTERNS = [
    ["|     |", "|     |", "|     |"],
    ["|     |", "|  *  |", "|     |"],
    ["|*    |", "|     |", "|    *|"],
    ["|*    |", "|  *  |", "|    *|"],
    ["|*   *|", "|     |", "|*   *|"],
    ["|*   *|", "|  *  |", "|*   *|"],
    ["|*   *|", "|*   *|", "|*   *|"],
  ]

  def initialize(top, bottom)
    @top = top if validate_domino_half(top)
    @bottom = bottom if validate_domino_half(bottom)
  end

  def to_s
    puts " ----- "
    DOMINO_PATTERNS[top].each { |row| puts row }
    puts " ----- "
    DOMINO_PATTERNS[bottom].each { |row| puts row }
    puts " ----- "
  end

  private

  def validate_domino_half(number)
    valid = number.is_a?(Integer) && number.between?(1, 6)
    puts "Invalid input: #{number}. Number must be between 1 and 6." unless valid
    valid
  end
end

domino = Domino.new(3, 6)

p domino.top
p domino.bottom

domino.to_s
