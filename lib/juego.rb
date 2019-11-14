class Juego
	def initialize
			@cont = 1
			@max = 3
			@personas = lista_personas
			@respuestas = [ ]
			@preguntas = [
				(Pregunta.new "es nene?", "hombre"), 
				(Pregunta.new "es nena?", "mujer"),
				(Pregunta.new "es chique?", "chique") 
			]
			rasgos = %w{chique castaño ojos_negros}
			@elegido = Persona.new "Anitta", rasgos 
	end
	def cont
		@cont
	end
	def max
		@max
	end
	def personas
		@personas
	end
	def respuestas
		@respuestas
	end
	def elegido
		@elegido
	end
	def preguntas
		@preguntas 
	end
	def incrementar_cont
		@cont += 1
	end
	def agregarRespuesta respuesta
			@respuestas = @respuestas.push respuesta
	end
end
