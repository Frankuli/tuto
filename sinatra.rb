require 'sinatra'
require 'sinatra/reloader'

get '/saludo/martin' do
	"Hola Mundo"
end
#ejecucion normal

get '/saludo/:nombre/:apellido' do
	"Hola #{params[:nombre]} #{params[:apellido]}"
end

get '/saludo_con_formato/:nombre' do
	@nombre = params[:nombre]
	erb :saludo
end

