require 'sinatra'

get '/akinator' do
	erb :akinator
end

post '/akinator' do
	erb :akinator
end

get '/akinator/:nombre' do
	@elegido = params["nombre"]
	erb :resultado
end
