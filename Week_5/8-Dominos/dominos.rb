class Domino
  attr_reader :top, :bottom
 
  def initialize(top, bottom)
    validate(input)
    validate(bottom)
    @top = top
    @bottom = bottom

  end

  private

  def validate_half(number)
    valid = number.is_a?(Integer) && number.between?(1, 6)
    raise "" unless valid
    valid
    # number has to be
    # an integer
    # between 1 and 6
  end
end

puts 1.between?(1, 6)
puts 6.between?(1, 6)
