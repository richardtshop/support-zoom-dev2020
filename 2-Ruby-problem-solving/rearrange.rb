# TO DO
# Need to reject float inputs

# Find the maximum of two numbers entered by a user
# If the user doesn't enter a number, prompt them to enter a number

puts "If you enter an integer, I will rearrange the digits to output the largest number"
print "Enter an integer: "

input_number = gets.chomp

# Check if input string is "0" 
# If not, then check if to_i converts to 0 
# Which indicates it is not an integer
# And prompt user again until a valid number is entered
while (input_number != "0" && input_number != "-0") && input_number.to_i == 0
  print "Not a number, please enter an integer: "
  input_number = gets.chomp
end 

# if number is only one digit or -0, return number
if input_number = "-0"
  puts input_number
  return
end

if input_number.length == 1
  puts input_number
  puts true
  return
end


input_array = input_number.split("")

# Check if input is negative
negative_number = input_array[0] == "-"

# remove - sign
if negative_number
  input_array = input_array.drop(1)
end

# convert to integer array and sort
input_array.map!{|x| x.to_i}.sort!

# Re-order array if number is negative
if negative_number
  non_zero = false
  i = 0
  # get index of first non zero integer
  while non_zero == false && i < input_array.length
    if input_array[i] != 0
      non_zero = true
    else
      i += 1
    end
  end
  
  # move first non-zero integer to first position in array
  if i  > 0
    temp = input_array[i];
    for j in i.downto(0)
      input_array[j] = input_array[j-1]
    end
    input_array[0] = temp
  end
  puts input_array.join("").to_i * -1
else
  puts input_array.reverse.join("").to_i
end

