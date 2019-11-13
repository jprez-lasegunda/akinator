class Persona 
	def initialize
		@sexo = "chique"
		@nombre = "Anitta"
	end
	def responder propiedad
		if propiedad == "sexo"
			@sexo
		end
	end
end
