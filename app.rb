require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "flimflam"
  end

  get '/' do
    erb :index
  end

  get '/cart' do
    erb :cart
  end

  post '/checkout' do

    @session = session
    params.each do |key, value|
      @session[key] = value
    end
    redirect '/cart'
    erb :cart
  end

end
