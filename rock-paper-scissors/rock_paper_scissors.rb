def validate_input(input_string)
   input_string == "Rock" || input_string == "Paper" || input_string == "Scissors"
end

def play(choice_1, choice_2)
  paper_wins = "Paper covers rock."
  scissors_win = "Scissors cuts paper."
  rock_wins = "Rock crushes scissors."
  
  
  if choice_1 == choice_2
    puts "Tie!"
  else
    case choice_1
    when "Rock"
      if choice_2 == "Scissors"
        puts rock_wins
      else
        puts paper_wins
      end
    when "Paper"
      if choice_2 == "Rock"
        puts paper_wins
      else
        puts scissors_win
      end
    when "Scissors"
      if choice_2 == "Paper"
        puts scissors_win
      else
        puts rock_wins
      end
    end
  end
end


puts "Rock Paper Scissors"
print "Player 1 - Enter your selection: "
player1_input = gets.chomp.capitalize

print "Player 2 - Enter your selection: "
player2_input = gets.chomp.capitalize

# End if choices are not valid
unless validate_input(player1_input) && validate_input(player2_input)
  puts "No cheaters! Only Rock, Paper or Scissors are allowed."
  return
end


play(player1_input, player2_input)
