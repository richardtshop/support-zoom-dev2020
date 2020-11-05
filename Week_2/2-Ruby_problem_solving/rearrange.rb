# Find the maximum of two numbers entered by a user
# If the user doesn't enter a number, prompt them to enter a number

puts 'If you enter an integer, I will rearrange the digits to output the largest number'
print 'Enter an integer: '

input = gets.chomp

return puts input if input == '-0'

# Check if input string is "0"
# If not, then check if to_i converts to 0
# Which indicates it is not an integer
# And prompt user again until a valid number is entered

def not_integer_or_float?(str)
  return true if (str != '0' && str != '-0') && str.to_i.zero? || str.to_i.to_s != str

  false
end

while not_integer_or_float?(input)
  print 'Not an integer, please enter an integer: '
  input = gets.chomp
end

# If input number is a single integer, return it
return puts input if input.length == 1

input_array = input.split('')
negative_number = input_array[0] == '-'
input_array = input_array.drop(1) if negative_number
input_array.map!(&:to_i).sort!

# Re-order array if number is negative
if negative_number
  non_zero = false
  i = 0
  # get index of first non zero integer
  while non_zero == false && i < input_array.size
    if input_array[i] != 0
      non_zero = true
    else
      i += 1
    end
  end

  # move first non-zero integer to first position in array
  if i.positive?
    temp = input_array[i]
    i.downto(0).each { |number| input_array[number] = input_array[number - 1] }
    input_array[0] = temp
  end
  puts input_array.join('').to_i * -1
else
  puts input_array.reverse.join('').to_i
end
