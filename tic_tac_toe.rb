require_relative 'board'
board = Tic_tac_toe.new
board.welcome_message
board.insert_data_into_dashboard
board.print_board
par = 0
$total_positions.times do |i|
  if (i % 2) == par
    puts "\e[1;31m jugador O \e[m"
    board.player_o
    board.print_board
    board.validate_row
    board.validate_column
    board.diagonal_inverted
    board.diagonal
  else
  puts "\e[1;34m jugador X \e[m"
  board.player_x
  board.print_board
  board.validate_row
  board.validate_column
  board.diagonal_inverted
  board.diagonal
  end
end
p 'enpate'
