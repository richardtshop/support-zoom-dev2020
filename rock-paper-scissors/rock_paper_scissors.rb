# frozen_string_literal: true

def validate_input(input_string)
  input_string == 'Rock' || input_string == 'Paper' || input_string == 'Scissors'
end

def play_rps_round(choice_1, choice_2)
  player1_score = 0
  player2_score = 0

  if choice_1 == 'Paper' && choice_2 == 'Rock'
    player1_score += 1
  elsif choice_1 == 'Rock' && choice_2 == 'Scissors'
    player1_score += 1
  elsif choice_1 == 'Scissors' && choice_2 == 'Paper'
    player1_score += 1
  else
    player2_score += 1
  end

  if player1_score > player2_score
    puts 'Player 1 wins this round'
  elsif player2_score > player1_score
    puts 'Player 2 wins this round.'
  end
  [player1_score, player2_score]
end

def user_input
  print 'Player 1 - Enter your selection: '
  first_input = gets.chomp.capitalize

  print 'Player 2 - Enter your selection: '
  second_input = gets.chomp.capitalize

  [first_input, second_input]
end

def print_scores(score1, score2)
  puts 'Final scores'
  puts "Player 1: #{score1}"
  puts "Player 2: #{score2}"
end

def play_rps_game
  puts 'Rock Paper Scissors'
  player1_total_score = 0
  player2_total_score = 0

  while player1_total_score < 2 && player2_total_score < 2
    player1_input, player2_input = user_input

    unless validate_input(player1_input) && validate_input(player2_input)
      puts 'No cheaters! Only Rock, Paper or Scissors are allowed.'
      player1_input, player2_input = user_input
    end

    if player1_input == player2_input
      puts 'Tie!'
      player1_input, player2_input = user_input
    end

    round_results = play_rps_round(player1_input, player2_input)
    player1_total_score += round_results[0]
    player2_total_score += round_results[1]
  end
  
  print_scores(player1_total_score, player2_total_score) if player1_total_score == 2 || player2_total_score == 2
end

play_rps_game
