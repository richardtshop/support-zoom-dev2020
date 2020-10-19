def ascii_art
  print "Please enter a number to create a triangle: "

  input = gets.chomp
  
   # validate input
   # check if input is string or float or 0 of below
   while input.to_i <= 0 || input.to_i.to_s != input 
     print "Not an integer, please enter an integer: "
     input = gets.chomp
   end 
   
   input_int = input.to_i
   
   # generate triangle
   for num in 1..input_int do
    print " " * (input_int - num)
    puts "*" * num
   end
  
end

ascii_art