# Mastermind guessing game

####
# To Do

# When user enters multiple duplicate numbers that exceeds the total in the random number, the output may be wrong
# e.g. 
# target = 1234
# guess = 3333
# output = x
# because the element is being removed from the array being checked after found the first time

# Potential solution is to loop through the target array and not the user input for the first check for exact match

puts "MASTERMIND"
target = rand(1111...6666)
target = 1234
target_array = target.to_s.split("")
number_of_guesses = 1;
guessed = false

print "[#{number_of_guesses}] Enter you guess: " 
input = gets.chomp

while guessed == false
  output = []
  input_numerical = input.to_i
  # Validate input  - numerical integer input between 1111 and 6666
  # checks 0, negative number and string
  # checks if number is a float
  unless (input_numerical < 1111 || input_numerical > 6666) || input.to_i.to_s != input 
    input_array = input.split("")
    
    # Check if arrays are the same
    if input_array == target_array
      guessed = true
      break
    end
    
    target_array_to_check = target_array.map(&:clone)
    
    input_array.each_with_index{ |number, index|
      # check if the current number is present in the array      
      if target_array_to_check.include?(number)
        # check if the number is at the exact same position
        if number == target_array_to_check[index]
          output.unshift("X")
        else
          output.push("x")
        end
        target_index = target_array_to_check.index(number)
        target_array_to_check[target_index] = -1 #change the found number to -1 to prevent duplicate matching
      end
    }
    
    unless output.size == 0
      puts output.join("")
    end
    number_of_guesses += 1
  end

  print "[#{number_of_guesses}] Enter you guess: " 
  input = gets.chomp
end


puts target
puts "Nice work! You took #{number_of_guesses} guess#{number_of_guesses > 1 ? 'es': ''}."
