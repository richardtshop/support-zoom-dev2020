def create_triangle(sides)
  if sides == 0
    puts ""
    return
  end
  for num in 1..sides do
    print " " * (sides - num)
    puts "* " * num
   end
end


def ascii_art
  print "Please enter a number to create a triangle: "

  input = gets.chomp
  input_int = input.to_i
  
   # validate input
   # check if input is string or float or 0 of below
   while input_int <= 0 || input_int.to_s != input 
     print "Not an integer, please enter an integer: "
     input = gets.chomp
   end 
   
   create_triangle(input_int)
end

ascii_art

