# good
# tic tac toe/main
class Tic_tac_toe
  def welcome_message
    print 'dame el tamano del board: '
    @board_size = gets.chomp.to_i
    $total_positions = @board_size * @board_size.to_i
    puts "tu board sera de #{@board_size} X #{@board_size}"
    @board = []
    Array.new
  end
  def insert_data_into_dashboard
    c = 1
      @board_size.times do
        @column = []
          @board_size.times do
            @column.push c
              c += 1
          end
         @board.push @column
      end
  end
  def print_board
    @board.each do |column|
      column.each do |card|
        print card
        print '  |  '
      end
      puts ''
    end
  end
  def player_x
    print '1 dato de la cordenada: '
      f=gets.chomp.to_i
    print '2 dato de la cordenada: '
      c=gets.chomp.to_i
      @board[f][c] = "\e[1;34mX\e[m"
  end
  def player_o
    print '1 dato de la cordenada: '
      f=gets.chomp.to_i
    print '2 dato de la cordenada: '
      c=gets.chomp.to_i
        @board[f][c] = "\e[1;31mO\e[m"
  end
  def validate_row
    @board_size.times do |x|
      row = []
      @board_size.times do |c|
        row << @board[x][c]
      end
      if row.uniq.length == 1
        puts "\e[1;32mganador en linea\e[m"
       exit
        gets
        return
      end
    end
  false
  end
  def validate_column
    @board_size.times do |c|
      row = []
          @board_size.times do |x|
            row << @board[x][c]
            #uniq.length
          end
      if row.uniq.length == 1
        puts "\e[1;32mganador en columna\e[m"
       exit
       return
      end
    end
    false
  end
  def diagonal_inverted
    diagonal_inverted = []
      @board_size.times do |c|
        diagonal_inverted << @board[c][c]
      end
        if diagonal_inverted.uniq.length == 1
          puts "\e[1;32mganador en diagonal invertida\e[m"
          exit
          gets
          return
        end
  end
  def diagonal
    board_size_menos_1 = @board_size - 1
      sum = []
        @board_size.times do |x|
          @board_size.times do |c|
            if (x+c) == board_size_menos_1
              sum << @board[x][c]
            end
          end
        end
    if sum.uniq.length == 1
      puts "\e[1;32mganador en diagonal\e[m"
      exit
      gets
    end
  end
end
