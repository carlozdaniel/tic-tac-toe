
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

  def valida_fila()
   # if los datos de la primera cordenada coisiden == win 
    @dato.times do |x|
      fila = []
      @dato.times do |c|
        fila << @tablero[x][c]
        #uniq.length
      end
      if fila.uniq.length == 1
        puts "winner"
        return
      end
    end
  false
  end

  def valida_columna()
    #   #if el 2do valor de la cordenada coiside == win 
        @dato.times do |c|
          fila = []
          @dato.times do |x|
            fila << @tablero[x][c]
            #uniq.length
          end
          if fila.uniq.length == 1
            puts "winner columna"
            return
          end
        end
    false
      end 
 

  def diagonal
    # @dato.time do
    #   y = @dato -1
    #   @tablero[x][y]
    #   x+=
    # end
    # if si los datos coisiden win 
  end
  def diagonal_invertida
  #si las cordenadas tienen el mismo valor entre si(4 datos coisiden) == win

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
      tablero.valida_fila
      tablero.valida_columna
    else
      tablero.jugador_x
      tablero.imprimir_tablero
      tablero.valida_fila
      tablero.valida_columna
  end
    
end


