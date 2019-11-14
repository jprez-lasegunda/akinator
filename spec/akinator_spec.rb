require "./lib/persona.rb"
require "./lib/buscado.rb"
require "./game.rb"

describe "Juego" do

	it "Arriesga Anitta, devuelvo GANASTE!" do
		inicializar
		buscado = Buscado.new
		expect(buscado.devolverNombre).to eq "Anitta"
	end

	it "Pregunta, devuelve cantidad" do
		inicializar
		respuesta = @@elegido.responder "genero_indefinido"
		expect(@@cont).to eq 1
	end
	
	it "Pregunta 4 veces, devuelve error" do
		inicializar
		expect {4.times {@@elegido.responder "genero_indefinido"}}.to raise_error
	end		

	it "Lista de preguntas no es vacia" do
		inicializar
		expect(@@preguntas.length).to be > 0
	end

	it "Pregunta es nene?, devuelvo false" do
		inicializar
		respuesta = @@elegido.responder "genero_hombre"
		expect(respuesta).to eq false
	end
	
	it "Pregunta es nena?, devuelvo false" do
		inicializar
		respuesta = @@elegido.responder "genero_mujer"
		expect(respuesta).to eq false
	end

	it "Pregunta es chique?, devuelvo true" do
		inicializar
		respuesta = @@elegido.responder "genero_indefinido"
		expect(respuesta).to eq true
	end

end
