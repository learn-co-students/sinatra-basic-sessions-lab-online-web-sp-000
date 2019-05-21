require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :index 
  end 
  
  # get '/checkout' do 
  #   @session = session
  #   session["item"] = @items
  # end
  
  post '/checkout' do 
    @items = params[:item]
    @session = session
    session["item"] = @items
    
  end
  
  configure do 
    enable :sessions
    set :session_secret, "Graycie" #find sinatra documentaion for setting this to a secure random #number generator value and then sharing that secret via environment variables in the shell to 
      #sinatra
  end 
end