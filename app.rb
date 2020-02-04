require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "ab1a28c6d30aa89b699ad1b4fe86f64e05b791163e9580e12d2aabfd9ac7ed7"
  end
  
  get '/' do
    erb :index
  end
  
  post '/checkout' do 
    session['item'] = params['item']
    @session = session
    erb :result
  end

  
end