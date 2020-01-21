class Gato

  def mensaje()
    print 'dame el tamano del tablero => '
    dato = gets.chomp
    @dato = dato.to_i 
    puts "tu tablero sera de #{@dato} X #{@dato}"
    @tablero = []
    Array.new
  end

  def llenar_tablero()
    c = 1
    @dato.times do
      @column = []
      @dato.times do   
        @column.push c
        c += 1
      end

      @tablero.push @column
  # "1" = @column.include?(7) 

    end
  end

  def imprimir_tablero()
    @tablero.each do |column|
      column.each do |card|
        print card
    
        print '  |  '
      end
      puts '' 
   
   end 
  end

def jugador_x

end 

def jugador_o

end

end

tablero = Gato.new()
tablero.mensaje
tablero.llenar_tablero
tablero.imprimir_tablero
tablero.jugador_xtic_tac_toe.rb
tablero.imprimir_tablero
tablero.jugador_x
