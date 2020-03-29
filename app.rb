require_relative 'config/environment'
 
class App < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secret, "Lefd3Z5yzrmioc2TkgiEPBcwR5L2DNOA"
  end
  
  get '/' do 
    @session = session
    erb :index
  end
  
  post '/checkout' do
    session[:item] = params[:item]
    erb :purchase
  end
  
end