class AsciiArt
  def self.draw_left_triangle(rows)
    shape_str = ''
    return shape_str if rows.zero?

    1.upto(rows).each { |row| shape_str += "#{'*' * row}\n" }
    shape_str
  end

  def self.draw_right_triangle(rows)
    shape_str = ''
    return shape_str if rows.zero?

    1.upto(rows).each { |row| shape_str += "#{' ' * (rows - row)}#{'*' * row}\n" }
    shape_str
  end

  def self.draw_centered_triangle(rows)
    shape_str = ''
    return shape_str if rows.zero?

    1.upto(rows).each { |row| shape_str += "#{' ' * (rows - row)}#{('* ' * row).delete_suffix(' ')}\n" }
    shape_str
  end

  def self.draw_diamond(rows)
    shape_str = ''
    return shape_str if rows.zero?

    1.upto(rows).each { |row| shape_str += "#{' ' * (rows - row)}#{('* ' * row).delete_suffix(' ')}\n" }
    (rows - 1).downto(1).each { |row| shape_str += "#{' ' * (rows - row)}#{('* ' * row).delete_suffix(' ')}\n" }
    shape_str
  end
end
