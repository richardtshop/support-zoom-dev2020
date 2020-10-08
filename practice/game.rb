# Get My Number Game
# Written by: Richard

puts "Welcome to 'Get my number'"
print "What's your name? "

name = gets.chomp

puts "Welcome, #{name}!"

# Store random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

