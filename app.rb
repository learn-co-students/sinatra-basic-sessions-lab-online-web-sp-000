require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = params[:item]
    @session = session
    erb :'checkout/display' 
  end

  configure do
    enable :sessions
    set :session_secret, "2116multnomah1995"
  end
end
