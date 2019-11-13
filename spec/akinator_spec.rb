require "./lib/persona.rb"
require "./lib/buscado.rb"

describe "Juego" do
	
	it "Pregunta si es chique, devuelvo True" do
		persona = Persona.new
		#preguntas.responderSexo 
		expect(persona.responderSexo).to eq "chique"
	end

	it "Arriesga Anitta, devuelvo GANASTE!" do
		buscado = Buscado.new
		expect(buscado.devolverNombre).to eq "Anitta"
	end
end
