# Ruby program which accept the a year from the user and determines if that year is a leap year or not. 

print "Enter a year: "

input = gets.chomp

# Check it's a valid year
# Negative number is invalid
# String is invalid
# 0 is invalid

input_numerical = input.to_i

if input_numerical <= 0 || # checks 0, negative number and string
  input.to_i.to_s != input # checks if number is a float
  puts "#{input} is not a valid year"
  return
end
  
# Check if it's a leap year
# Leap years are
# Years that are divisible by 4
# AND
# Years that are not divisible by 100
# UNLESS they are also divisible by 400


if input_numerical % 4 != 0 || (input_numerical % 100 == 0 && input_numerical % 400 != 0)
  puts "#{input} is a not leap year"
else 
  puts "#{input} is a leap year"
end