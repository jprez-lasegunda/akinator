require "./lib/persona.rb"
require "./lib/buscado.rb"

describe "Juego" do
	
	it "Pregunta si es chique, devuelvo True" do
		persona = Persona.new
		expect(persona.responder "sexo").to eq "chique"
	end

	it "Arriesga Anitta, devuelvo GANASTE!" do
		buscado = Buscado.new
		expect(buscado.devolverNombre).to eq "Anitta"
	end
end
