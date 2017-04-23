
if detect_winner(board) == "Player"
    prompt "You won"
    player_wins += 1
  elsif detect_winner(board) == "Computer"
    prompt "Computer won"
    computer_wins += 1
  else
    prompt "It's A Tie, No one gets points"
  end

  prompt "Player: #{player_wins} vs Computer: #{computer_wins}"

  if player_wins == 5
    prompt "Player wins the game"
  elsif computer_wins == 5
    prompt "Computer wins the game"
  end

 break if player_wins == 5 || computer_wins == 5

