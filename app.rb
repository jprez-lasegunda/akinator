require 'sinatra'
require './game.rb'
require "./lib/juego.rb"

get '/akinator' do
	#inicializar
	erb :akinator
end

post '/akinator' do
	#inicializar
	respuesta = @@juego.elegido.responder params["pregunta"]
	if respuesta
		valor = "Verdadero"
	else
		valor = "Falso"
	end

	@@juego.preguntas.each do |pregunta|
		if pregunta.rasgo == params["pregunta"]
			@@juego.agregarRespuesta (pregunta.texto + ': ' + valor)
			break
		end
	end	
	
	erb :akinator
end

get '/akinator/:nombre' do
	@respuesta = @@juego.elegido.adivinar params["nombre"]
	erb :resultado
end
