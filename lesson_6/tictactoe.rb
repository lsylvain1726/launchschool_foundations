require "pry"

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [1, 2, 3], [4, 5, 6], [7, 8, 9] +
  [1, 4, 7], [2, 5, 8], [3, 6, 9] +
  [1, 5, 9], [3, 5, 7]
FIRST_PICK = "choose"

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts ".....|.....|"
  puts "..#{brd[1]}..|..#{brd[2]}..|  #{brd[3]}"
  puts ".....|.....|"
  puts "-----|-----|-----"
  puts ".....|.....|"
  puts "..#{brd[4]}..|..#{brd[5]}..|  #{brd[6]}"
  puts ".....|.....|"
  puts "-----|-----|-----"
  puts ".....|.....|"
  puts "..#{brd[7]}..|..#{brd[8]}..|  #{brd[9]}"
  puts ".....|.....|"
  puts ""
end
# rubocop: enable Metrics/MethodLength, Metrics/AbcSize


def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}" 
    arr.join(delimiter)
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end
 
def player_places_piece(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece(brd)
  square = nil

  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # just pick a square
  if !square
    square = brd[5] == INITIAL_MARKER ? 5 : empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif  brd[line[0]] == COMPUTER_MARKER &&
           brd[line[1]] == COMPUTER_MARKER &&
           brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end



player_score = 0
computer_score = 0

loop do
  board = initialize_board

  loop do
    display_board(board)
    player_places_piece(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)
  player_score += 1 if detect_winner(board) == "Player"
  computer_score += 1 if detect_winner(board) == "Computer"
 

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie"
  end

  prompt "Player: #{player_score} vs Computer: #{computer_score}"

  prompt "Player Wins the game" if player_score == 5 
  prompt puts "Computer Wins the game" if computer_score == 5   

  break if player_score == 5 || computer_score == 5


  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thanks for playing Tic Tac Toe! GoodBye"
