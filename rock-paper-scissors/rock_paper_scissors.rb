def validate_input(input_string)
   input_string == "Rock" || input_string == "Paper" || input_string == "Scissors"
end

def play(choice_1, choice_2)
  paper_wins = "Paper covers rock."
  scissors_win = "Scissors cuts paper."
  rock_wins = "Rock crushes scissors."
  player1_score = 0
  player2_score = 0
  
  if choice_1 == choice_2
    puts "Tie!"
  else
    case choice_1
    when "Rock"
      if choice_2 == "Scissors"
        puts rock_wins
        player1_score += 1
      else
        puts paper_wins
        player2_score += 1
      end
    when "Paper"
      if choice_2 == "Rock"
        puts paper_wins
        player1_score += 1
      else
        puts scissors_win
        player2_score += 1
        
      end
    when "Scissors"
      if choice_2 == "Paper"
        puts scissors_win
        player1_score += 1
      else
        puts rock_wins
        player2_score += 1
      end
    end
  end
  
  if player1_score > player2_score
    puts "Player 1 wins."
  elsif player2_score > player1_score
    puts "Player 2 wins."
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
