class Persona

	def initialize nombre, rasgos
		@nombre = nombre
		@rasgos = rasgos
	end

	def responder propiedad
		sumar
		if @rasgos.include? propiedad
			return true
		else
			return false
		end
	end

	def adivinar nombre
		puts @nombre
		puts nombre
		if @nombre.eql? nombre
			return true
		else
			return false
		end
	end

	def nombre
		return @nombre
	end

	def rasgos
		return @rasgos
	end

end
