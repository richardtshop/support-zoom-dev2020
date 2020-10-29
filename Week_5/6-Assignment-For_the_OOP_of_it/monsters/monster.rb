class Monster
  attr_reader :name, :height, :location, :quarries

  def initialize(name, location, height)
    @name = name if validate_string(name, :name)
    @location = location if validate_string(location, :location)
    if height.is_a?(Integer) && height > 0
      @height = height
    else
      raise input_error(height, :height)
    end
    @quarries = []
  end

  def see_quarries
    return puts "#{name} has no current quarries." if quarries.empty?

    quarry_plural = quarries.size > 1 ? "quarries" : "quarry"
    puts "#{name} has claimed #{quarries.size} #{quarry_plural}:"
    quarries.each_with_index { |quarry, index| puts "#{index + 1}: #{quarry}" }
  end

  def add_quarry(quarry)
    quarries << quarry if validate_string(quarry, :quarries)
  end

  def scare
    puts "#{name} roars into the night!"
  end

  def attack
    puts "#{name} leaps towards you!"
  end

  private

  def validate_string(value, attribute)
    valid = value.is_a?(String) && !value.empty?

    raise input_error(value, attribute) unless valid
    valid
  end

  def input_error(value, attribute)
    "#{value} is not a valid input for #{attribute}"
  end
end
