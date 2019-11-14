require "./lib/persona.rb"
require "./game.rb"

describe "Juego" do

	it "Pregunta cantidad de intentos maximos, devuelvo 3" do
		iniciar_juego 1
		expect(@@juego.max).to eq 3
	end
	
	it "Pregunta cantidad de intentos iniciales, devuelvo 1" do
		iniciar_juego 1
		expect(@@juego.cont).to eq 1
	end

	it "Hace una pregunta, incrementa en 1 los intentos" do
		iniciar_juego 1
		respuesta = @@juego.elegido.responder "chique"
		expect(@@juego.cont).to eq 2
	end
	
	it "Pregunta 4 veces, devuelve error" do
		iniciar_juego 1
		expect {4.times {@@juego.elegido.responder "chique"}}.to raise_error
	end		

	it "Lista de preguntas no es vacia" do
		iniciar_juego 1
		expect(@@juego.preguntas.length).to be > 0
	end

	it "Pregunta es nene?, devuelvo false" do
		iniciar_juego 1
		respuesta = @@juego.elegido.responder "hombre"
		expect(respuesta).to eq false
	end
	
	it "Pregunta es nena?, devuelvo false" do
		iniciar_juego 1
		expect(@@juego.elegido.responder "mujer").to eq false
	end

	it "Pregunta es chique?, devuelvo true" do
		iniciar_juego 1
		expect(@@juego.elegido.responder "chique").to eq true
	end

	it "Arriesga Anitta, devuelvo true" do
		iniciar_juego 1
		respuesta = @@juego.elegido.adivinar "Anitta"
		expect(respuesta).to eq true
	end

	it "Arriesga Juan, devuelvo false" do
		iniciar_juego 1
		respuesta = @@juego.elegido.adivinar "Juan"
		expect(respuesta).to eq false
	end

	it "Muestro rasgos de Anitta, muestro arreglo de rasgos" do
		iniciar_juego 1
		expect( @@juego.elegido.rasgos.length ).to be > 0
	end

	it "Obtengo rasgo de pregunta" do
		iniciar_juego 1
		expect( @@juego.preguntas[0].rasgo ).to eq "hombre"
	end

 	it "Obtengo texto de pregunta" do
		iniciar_juego 1
		expect( @@juego.preguntas[0].texto ).to eq "es nene?"
	end

end
