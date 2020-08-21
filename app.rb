require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "this is the elaborately long secret"
  end
  
  get '/' do 
    erb :index
  end 
  
  post '/checkout' do 
    @item = params[:item]
    session[:item] = @item
    # binding.pry
    erb :checkout
  end 
  
end