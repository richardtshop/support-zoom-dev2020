class AsciiArt
  def self.draw(number)
    shape_str = ''

    unless number.zero?
      1.upto(number).each { |num| shape_str += "#{'*' * num}\n" }
    end
    shape_str
  end
end
