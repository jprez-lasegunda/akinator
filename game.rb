require "./lib/pregunta.rb"
require "./lib/persona.rb"


def inicializar
	@@cont = 1
	@@max = 3
	@@respuestas = [ ]
	@@preguntas = [
		(Pregunta.new "es nene?", "genero_hombre"), 
		(Pregunta.new "es nena?", "genero_mujer"),
		(Pregunta.new "es chique?", "genero_indefinido") 
	]
	@@elegido = Persona.new "Anitta", "genero_indefinido"

end

def sumar
	if @@cont <= @@max
		@@cont +=1
	else
		fail "Te pasaste negr@"
	end		
end
