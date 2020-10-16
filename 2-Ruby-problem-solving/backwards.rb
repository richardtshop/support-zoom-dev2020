# Ruby program which accept the user's first and last name and print them in reverse order with a space between them.

print "Input your first and last name: "

input = gets.chomp


# Split user's name 

input_array = input.split(" ")

p input_array.size

while input_array.size != 2
  print "Invalid input, please enter your first and last name separated by a space: "
  input = gets.chomp
  input_array = input.split(" ")
end

input_array[0], input_array[1] = input_array[1], input_array[0]

output = input_array.join(" ")

puts "Hello #{output}"