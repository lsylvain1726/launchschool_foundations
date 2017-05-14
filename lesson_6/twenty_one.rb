# twenty-one

DEALER_MAX_VALUE = 17
GAME_MAX_VALUE = 21

def initialize_deck
  suits = ['H', 'S', 'D', 'C']
  value = ['2', '3', '4', '5', '6', '7', '8', '9', "J", "Q", "K", "A"]
  suits.product(value)
end

def prompt(msg)
  puts "=> #{msg}"
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > GAME_MAX_VALUE
  end

  sum
end

def busted?(cards)
  total(cards) > GAME_MAX_VALUE
end

def cards_selected(deck)
  cards = deck.sample(2)
  cards.each { |samples| deck.delete(samples) }
end

def cards_hit(deck)
  cards = deck.sample
  cards.each { |samples| deck.delete(samples) }
end

def winner(player_cards, dealer_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > GAME_MAX_VALUE
    :player_busted
  elsif dealer_total > GAME_MAX_VALUE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(player_cards, dealer_cards)
  winner = winner(player_cards, dealer_cards)

  case winner
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end

  prompt "First to 2 wins, hit enter continue"
  gets
end

def play_again?
  prompt "Would you like to play another round? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def end_of_round(dealer_cards, player_cards, dealer_total, player_total)
  puts "---------------------------------------------------------------------"
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  puts "----------------------------------------------------------------------"
end

def game_winner(player_score, dealer_score)
  puts "======================================"
  if player_score >= 2
    prompt "Player wins the game"
  elsif dealer_score >= 2
    prompt "Dealer wins the game"
  end
end

# player turn

loop do
  player_score = 0
  dealer_score = 0

  loop do
    break if player_score == 2 || dealer_score == 2

    system 'clear'
    deck = initialize_deck
    prompt "Player score is: #{player_score} | Dealer score is: #{dealer_score}"
    player_cards = cards_selected(deck)
    dealer_cards = cards_selected(deck)
    player_total = total(player_cards)
    dealer_total = total(dealer_cards)

    prompt "Player cards are #{player_cards}"
    prompt "Dealer cards are #{dealer_cards[0]} and ?"

    loop do
      player = nil
      loop do
        puts "Would you like to (h)it or (s)tay?"
        player = gets.chomp
        break if player == "s" || player == "h"
      end

      if player == "h"
        player_cards << cards_hit(deck)
        player_total = total(player_cards)
        prompt "You chose to hit"
        prompt "Your cards are #{player_cards}"
        prompt "Your total is #{player_total}"
      end

      break if player == "s" || busted?(player_cards)
    end

    if busted?(player_cards)
      end_of_round(dealer_cards, player_cards, dealer_total, player_total)
      display_result(player_cards, dealer_cards)
      dealer_score += 1
      next
    else
      prompt "You stayed at #{player_total}"
    end

    # computer turn
    prompt "Dealer turn..."

    loop do
      break if total(dealer_cards) >= DEALER_MAX_VALUE
      dealer_cards << cards_hit(deck)
      dealer_total = total(dealer_cards)
      prompt "Dealers cards are now: #{dealer_cards}"
    end

    if busted?(dealer_cards)
      end_of_round(dealer_cards, player_cards, dealer_total, player_total)
      display_result(player_cards, dealer_cards)
      player_score += 1
      next
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    end_of_round(dealer_cards, player_cards, dealer_total, player_total)
    display_result(player_cards, dealer_cards)

    if winner(player_cards, dealer_cards) == :player
      player_score += 1
    elsif winner(player_cards, dealer_cards) == :dealer
      dealer_score += 1
    end
  end

  game_winner(player_score, dealer_score)
  break unless play_again?
end

puts "Thank you for playing twenty one!"
