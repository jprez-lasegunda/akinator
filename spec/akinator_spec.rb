require "./lib/persona.rb"
require "./lib/buscado.rb"
require "./game.rb"

describe "Juego" do
	
	it "Pregunta si es chique, devuelvo True" do
		inicializar
		persona = Persona.new
		expect(persona.responder "sexo").to eq "chique"
	end

	it "Arriesga Anitta, devuelvo GANASTE!" do
		inicializar
		buscado = Buscado.new
		expect(buscado.devolverNombre).to eq "Anitta"
	end

	it "Pregunta, devuelve cantidad" do
		inicializar
		persona = Persona.new
		respuesta = persona.responder "sexo"
		expect(@@cont).to eq 1
	end
	
	it "Pregunta 4 veces, devuelve error" do
		inicializar
		persona = Persona.new
		respuesta = persona.responder "sexo"
		respuesta = persona.responder "sexo"
		respuesta = persona.responder "sexo"
		expect {persona.responder "sexo"}.to raise_error
	end		
		
end
