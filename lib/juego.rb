class Juego
	def initialize
			@cont = 1
			@max = 3
			@personas = lista_personas
			@respuestas = [ ]
			@preguntas = [
				(Pregunta.new "es nene?", "hombre"), 
				(Pregunta.new "es nena?", "mujer"),
				(Pregunta.new "es chique?", "chique"),
				(Pregunta.new "es de cabello castaño?", "cabello_castaño"),
				(Pregunta.new "es de cabello rubio?", "cabello_rubio"),
				(Pregunta.new "es de cabello oscuro?", "cabello_oscuro"),
				(Pregunta.new "es medio dolape?", "se_le_vuelan_las_chapas"),
				(Pregunta.new "es de cabello canoso?", "canoso"),
				(Pregunta.new "es tester?", "tester"),
				(Pregunta.new "es matero?", "matero"),
				(Pregunta.new "es programador?", "programador"),
				(Pregunta.new "es de ojos marrones?", "ojos_marrones"),
				(Pregunta.new "es de ojos azules?", "ojos_azules"),
				(Pregunta.new "es de ojos_verdes?", "ojos_verdes"),
				(Pregunta.new "es analista?", "analista"),
				(Pregunta.new "es barbudo?", "barbudo"),
				(Pregunta.new "es de buen comer?", "de_buen_comer"),
				(Pregunta.new "es medio chicato?", "medio_chicato"),
				(Pregunta.new "tiene tattoo?", "tattoo"),
				(Pregunta.new "es canalla?", "de_central"),
				(Pregunta.new "es bostero?", "de_boca"),
				(Pregunta.new "es gallina?", "de_river"),
				(Pregunta.new "es leproso?", "de_newells"),
				(Pregunta.new "es cuervo?", "de_san_lorenzo"),
				(Pregunta.new "es de kleer?", "kleer"),
				(Pregunta.new "es de La Segunda?", "l2"),
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
