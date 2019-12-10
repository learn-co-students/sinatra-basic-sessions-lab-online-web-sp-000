require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "magic"  
  end


  get "/" do
#    session["item"] = "#{params[:item]}"
 #   @session = session 
    erb :index

  end
  
#  post '/checkout' do
 #   "#{params[:item]}"
#    erb :checkout
 # end 

 post '/checkout' do 
    session["item"] = "#{params[:item]}"
    @session = session 
   "#{params[:item]}"
  
 end


end 
