class Domino
  DOMINO_PATTERNS = [
    ["|     |", "|     |", "|     |"],
    ["|     |", "|  *  |", "|     |"],
    ["|*    |", "|     |", "|    *|"],
    ["|*    |", "|  *  |", "|    *|"],
    ["|*   *|", "|     |", "|*   *|"],
    ["|*   *|", "|  *  |", "|*   *|"],
    ["|*   *|", "|*   *|", "|*   *|"],
  ]

  attr_reader :top, :bottom

  def self.double_six
    double_six_set = []
    (0..6).each do |bottom|
      (0..bottom).each do |top|
        double_six_set << Domino.new(top, bottom)
      end
    end
    double_six_set
  end

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
    valid = number.is_a?(Integer) && number.between?(0, 6)
    puts "Invalid input: #{number}. Number must be between 0 and 6." unless valid
    valid
  end
end

# domino = Domino.new(6, 6)

# domino.to_s

double_six_set = Domino.double_six

double_six_set.each { |domino| domino.to_s }
