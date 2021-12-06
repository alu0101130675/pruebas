class Fruta < Granja
	include Comparable
	attr_reader :tipo, :sabor
	 def initialize(nombre, emisiones, terreno, precio,coste,tipo,sabor)
		 super(nombre, emisiones, terreno, precio,coste)
		 @tipo=tipo
		 @sabor=sabor

	end
	 def to_s
                 "#{@nombre},#{@emisiones},#{@terreno},#{@precio},#{@coste}"
         end
	  def <=> (other)
		 @coste <=> other.coste
	  end
          def num_arboles (distancia,forma)
		  if forma == 'rectangular'
		           (Math.sqrt((@terreno * 10000)) /distancia +1) * ((Math.sqrt((@terreno * 10000)) /distancia +1))
		  else @terreno*10000/(distancia*distancia*0.866)
		  end
	  end
	  def num_hectareas (distancia,forma,plantas)
		  if forma == 'rectangular'
			  ((Math.sqrt(plantas)-1)*distancia)*((Math.sqrt(plantas)-1)*distancia)/10000
		  else distancia*distancia*0.866*plantas/10000
		  end
	  end
end
