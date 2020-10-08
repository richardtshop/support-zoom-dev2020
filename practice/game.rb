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

num_guesses = 0

guessed_it = false

oops_string = "Oops. You guess was"

puts "#{10 - num_guesses} guesses left."

until num_guesses == 10 || guessed_it
  print "Make a guess: "
  guess = gets.to_i
  if guess == target
    puts "Good job, #{name}! You guessed my number in #{num_guesses} guesses!"
    guessed_it = true;
  elsif guess < target
    puts "#{oops_string} LOW"
  else
    puts "#{oops_string} HIGH"
  end
  num_guesses += 1
end


unless guessed_it
  puts "Sorry you ran out of guesses. It was #{target}"
end