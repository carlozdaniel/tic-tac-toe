
class Gato

  def mensaje()
    print 'dame el tamano del tablero: '
    dato = gets.chomp
    @dato = dato.to_i 
    $total_de_posiciones = @dato * @dato.to_i
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
  def jugador_x()
    print "1 dato de la cordenada"
    f=gets.chomp.to_i
    print "2 dato de la cordenada"
    c=gets.chomp.to_i
    @tablero[f][c] ="x"    
  end 

  def jugador_o
    # o = gets.chomp
    print "1 dato de la cordenada"
    f=gets.chomp.to_i
    print "2 dato de la cordenada"
    c=gets.chomp.to_i
    @tablero[f][c] = "o"   
    end 
  def podicion_a_cambiar
    $podicion_a_cambiar = gets.chomp.to_i
  end
  

end

tablero = Gato.new()
tablero.mensaje
tablero.llenar_tablero
tablero.imprimir_tablero


$total_de_posiciones.times do |i|
    
  if (i % 2) == 0
      tablero.jugador_o
      tablero.imprimir_tablero
    else
      tablero.jugador_x
      tablero.imprimir_tablero

  end
    
end


