class Persona

	def initialize nombre, sexo
		@nombre = nombre
		@sexo = sexo
	end

	def responder propiedad
		sumar
		if propiedad.eql? @sexo
			return true
		else
			return false
		end
	end
end
