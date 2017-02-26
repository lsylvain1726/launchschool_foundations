# rock_paper_scissors.rb

VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]
WINNING_CHOICES = [["rock", "scissors"],
                   ["paper", "rock"],
                   ["scissors", "paper"],
                   ["rock", "lizard"],
                   ["lizard", "spock"],
                   ["spock", "scissors"],
                   ["scissors", "lizard"],
                   ["lizard", "paper"],
                   ["paper", "spock"],
                   ["spock", "rock"]]

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING_CHOICES.include?([first, second])
end

player_wins = 0
computer_wins = 0

loop do # main loop
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player_choice = gets.chomp

    choice = case player_choice
             when "r" then "rock"
             when "p" then "paper"
             when "sc" then "scissors"
             when "l" then "lizard"
             when "sp" then "spock"
             else
               prompt("This is not valid.")
             end

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{choice} and computer chose: #{computer_choice}"

  if win?(choice, computer_choice)
    prompt "You won"
    player_wins += 1
  elsif win?(computer_choice, choice)
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

  prompt "Do you want to play again"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing the game"
