def ascii_art
  print "Please enter a number to create a triangle: "

  input = gets.chomp
  
   # validate input
  
   
   input_int = input.to_i
   
   # generate triangle
   for num in 1..input_int do
    print " " * (input_int - num)
    puts "*" * num
   end
  
end

ascii_art