#require "Cultivos"
class Hortaliza
	attr_reader :nombre, :emisiones, :terreno, :precio, :coste
	def initialize(nombre, emisiones, terreno, precio, coste)
		  @nombre=nombre
                  @emisiones=emisiones
		  @terreno=terreno
		  @precio=precio
		  @coste=coste
	end
        def get_emisiones
	         "#{@emisiones}"
	end
	def get_terreno
		"#{@terreno}"
	end
	def get_precio
		"#{@precio}"
	end
	def get_coste
		 "#{@coste}"
	end
	def to_s
		"#{@nombre},#{@emisiones},#{@terreno},#{@precio},#{@coste}"
	end
end
