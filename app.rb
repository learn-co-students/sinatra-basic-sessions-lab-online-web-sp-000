require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end #end of configure 
  
  get '/' do 
    erb :index 
  end
  
  
  post '/checkout' do 
   @session = session
   checkout_item = params["item"]
   @session[:item] = checkout_item
  end 
  
end