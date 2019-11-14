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

<<<<<<< HEAD

=======
>>>>>>> 8ca44171ab5160acc8581d9c4c29c72ea5020bde
