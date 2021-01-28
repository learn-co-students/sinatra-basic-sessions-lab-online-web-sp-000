require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do 
    erb :index 
  end
  
  post "/checkout" do 
    @sessions = session
    item = params[:item]
    @sessions[:item] = item
  end
  
  configure do 
    enable :sessions
  end
end