# Find the maximum of two numbers entered by a user
# If the user doesn't enter a number, prompt them to enter a number

puts "Welcome to maximum number. I can tell you which number is higher out of two numbers entered."

print "Please enter the first number: "

input_number_1 = gets.chomp

# Check if input string is "0"
# If not, then check if to_1 converts to 0 
# Which indicates it is not an integer
# And prompt user again until a valid number is entered

while input_number_1 != "0" && input_number_1.to_i == 0
  print "Not a number, please enter an integer: "
  input_number_1 = gets.chomp
end 
  
print "Please enter the second number: "

input_number_2 = gets.chomp

while input_number_2  != "0" && input_number_2.to_i == 0
  print "Not a number, please enter an integer: "
  input_number_1 = gets.chomp
end 

if input_number_1 < input_number_2
  puts "Max: #{input_number_2}"
elsif input_number_2 < input_number_1
  puts "Max: #{input_number_1}"
else
  puts "#{input_number_2} is equal to #{input_number_2}"
end