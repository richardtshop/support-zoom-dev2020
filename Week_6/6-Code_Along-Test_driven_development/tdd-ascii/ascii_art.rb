class AsciiArt
  def draw(number)
  end
end

print("Please enter a number to create a triangle: ")
input = gets.chomp
input_int = input.to_i

while input_int < 0 || input_int.to_s != input
  print("Not an integer, please enter an integer: ")
  input = gets.chomp
  input_int = input.to_i
end

diamond = AsciiArt.new
puts diamond.draw(input_int)
