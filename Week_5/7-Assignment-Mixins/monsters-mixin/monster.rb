require_relative 'mixins'

class Monster
  attr_reader :name, :height, :location, :quarries

  def initialize(name, location, height)
    validate_string(name, :name)
    validate_string(location, :location)
    @name = name
    @location = location
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

  def scare
    puts "#{name} roars into the night!"
  end

  def attack(quarry)
    add_quarry(quarry)
    puts "#{name} leaps towards #{quarry}!"
  end

  private

  def add_quarry(quarry)
    quarries << quarry if validate_string(quarry, :quarries)
  end

  def validate_string(value, attribute)
    raise input_error(value, attribute) unless value.is_a?(String) && !value.empty?
  end

  def input_error(value, attribute)
    "#{value} is not a valid input for #{attribute}"
  end
end
