require 'sinatra'
require './game.rb'

get '/akinator' do
	inicializar
	erb :akinator
end

post '/akinator' do
	inicializar
	@@respuestas = @@respuestas.push params["pregunta"]
	erb :akinator
end

get '/akinator/:nombre' do
	@elegido = params["nombre"]
	erb :resultado
end

get "/lista" do
	@items = %w{pera manzana durazno}
	erb :items
end
