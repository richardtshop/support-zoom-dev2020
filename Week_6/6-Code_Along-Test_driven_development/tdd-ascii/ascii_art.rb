class AsciiArt
  def self.draw_left_triangle(rows)
    shape_str = ''

    unless rows.zero?
      1.upto(rows).each { |row| shape_str += "#{'*' * row}\n" }
    end
    shape_str
  end
  
  def self.draw_right_triangle(rows)
    shape_str = ''

    unless rows.zero?
      1.upto(rows).each { |row| shape_str += "#{' ' * (rows - row)}#{'*' * row}\n" }
    end
    shape_str
  end
  
  def self.draw_centered_triangle(rows)
    ''
  end
end