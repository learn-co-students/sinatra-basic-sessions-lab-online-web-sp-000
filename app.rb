require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "paris"
  end
  
  get '/' do
   
    erb :index
  en
end