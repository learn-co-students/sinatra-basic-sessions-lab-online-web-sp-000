require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do


    erb :index

    end

  post '/checkout' do
    binding.pry
    session[params.keys[0]] = params.values[0]
    @session = session
    erb :checkout

  end

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

end
