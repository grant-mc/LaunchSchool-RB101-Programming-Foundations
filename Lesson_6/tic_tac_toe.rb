require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMP_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMP_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts""
end
# rubocop:enable Metrics/AbcSize

def determine_current_player(user_choice)
  case user_choice
    when 'player' then 'player'
    when 'computer' then 'comp'
    when 'choose' then ['player', 'comp'].sample
  end
end

def alternate_player(current_player)
  current_player == 'player' ? 'comp' : 'player'
end

def intitialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor (arr, sep = ', ', fin = 'or')
  case arr.size
    when 0 then ''
    when 1 then arr.first
    when 2 then arr.join(" #{fin} ")
    else
      arr[-1] = "#{fin} #{arr.last}"
      arr.join(sep)
    end
end

def place_piece!(brd, current_player)
  if current_player == 'player'
    brd[player_places_piece!(brd)] = PLAYER_MARKER
  else
    brd[computer_places_piece!(brd)] = COMP_MARKER
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  square
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    player = find_at_risk_square(line, brd, PLAYER_MARKER)
    comp = find_at_risk_square(line, brd, COMP_MARKER)
    case 
      when comp != nil then square = comp
      when player != nil then square = player
      when brd[5] == INITIAL_MARKER then square = 5
    end
    break if square
  end

  if !square
    square = empty_squares(brd).sample
  end

  square
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMP_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

comp_score = 0
player_score = 0
loop do
  board = intitialize_board
  prompt "Who would you like to go first? (player, computer, choose)"
  user_choice = gets.chomp
  current_player = determine_current_player(user_choice)

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    if detect_winner(board) == 'Player'
      player_score += 1
    else
      comp_score +=1
    end
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie"
  end
  prompt "Player: #{player_score}  Computer: #{comp_score}"
  break if player_score == 5 || comp_score == 5
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

if player_score == 5
  prompt "The Player won 5 games!"
else
  prompt "The Computer won 5 games!"
end
