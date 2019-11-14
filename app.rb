require 'sinatra'
require './game.rb'

get '/akinator' do
	#inicializar
	@@respuestas = []
	erb :akinator
end

post '/akinator' do
	#inicializar
	respuesta = @@elegido.responder params["pregunta"]
	if respuesta
		valor = "Verdadero"
	else
		valor = "Falso"
	end

	@@preguntas.each do |pregunta|
		if pregunta.rasgo == params["pregunta"]
			@@respuestas = @@respuestas.push pregunta.texto + ': ' + valor
			break
		end
	end	

	erb :akinator
end

get '/akinator/:nombre' do
	@elegido = params["nombre"]
	erb :resultado
end


