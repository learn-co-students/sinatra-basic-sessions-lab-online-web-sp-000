require_relative 'config/environment'

class App < Sinatra::Base

     configure do
       enable :sessions   #habilita la variable session con los datos
       set :session_secret, "secret"
     end

     get '/' do
      erb  :index
     end

     post '/checkout' do

       session[:item]= params[:item]  #guardo el item en el hash session.
       @session = session #guardo el hash en una instancia
       erb :checkout  #esta pagina no esta armada
     end
end