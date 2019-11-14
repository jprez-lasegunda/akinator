require "./lib/pregunta.rb"
require "./lib/persona.rb"

def iniciar_juego
	@@cont = 1
	@@max = 3
	@@respuestas = [ ]
	@@preguntas = [
		(Pregunta.new "es nene?", "genero_hombre"), 
		(Pregunta.new "es nena?", "genero_mujer"),
		(Pregunta.new "es chique?", "genero_indefinido") 
	]
	rasgos = %w{genero_indefinido castaño ojos_negros}
	@@elegido = Persona.new "Anitta", rasgos 
end

iniciar_juego

def sumar
	if @@cont <= @@max
		@@cont +=1
	else
		fail "Te pasaste negr@"
	end		
end
