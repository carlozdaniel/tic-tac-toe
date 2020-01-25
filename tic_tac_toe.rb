
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
    @dato.times do |x|
      fila = []
      @dato.times do |c|
        fila << @tablero[x][c]

      end
      if fila.uniq.length == 1
        puts "winner linea"
        puts "preciona Ctrl + c para salir"
        gets
        return
      end
    end
  false
  end

  def valida_columna()
    @dato.times do |c|
      fila = []
          @dato.times do |x|
            fila << @tablero[x][c]
            #uniq.length
          end
      if fila.uniq.length == 1
        puts "winner columna"
        puts "preciona Ctrl + c para salir"
       return  
      end
    end
    false
  end

  def diagonal_invertida
      diagonal_invertida = []
      @dato.times do |c|
      diagonal_invertida << @tablero[c][c]     
    end
        if diagonal_invertida.uniq.length == 1
          puts "winner diagonal invertida"
          puts "preciona Ctrl + c para salir"
          gets
          return
        end 
        
    end

    
    def diagonal 
      dato_menos_1 = @dato - 1
  suma = [] 
      @dato.times do |x|
        
            @dato.times do |c|
              if (x+c) == dato_menos_1
               suma << @tablero[x][c]
              end          
     end

   end
   if suma.uniq.length == 1
    puts "winner diagonal"
    puts "preciona Ctrl + c para salir"
    gets
    
  end 

  end
  end

tablero = Gato.new()
tablero.mensaje
tablero.llenar_tablero
tablero.imprimir_tablero


$total_de_posiciones.times do |i|
    
  if (i % 2) == 0
      puts "jugador O"
      tablero.jugador_o
      tablero.imprimir_tablero
      tablero.valida_fila
      tablero.valida_columna
      tablero.diagonal_invertida
      tablero.diagonal
      
    else
      puts "jugador X"
      tablero.jugador_x
      tablero.imprimir_tablero
      tablero.valida_fila
      tablero.valida_columna
      tablero.diagonal_invertida
      tablero.diagonal
  end
  
end
puts "enpate"

