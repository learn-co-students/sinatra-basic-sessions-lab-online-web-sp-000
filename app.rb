require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "feateaioteastneatheastiehoataete"
  end

  get '/' do
    erb :index
  end

  get '/checkout' do
    session["item"] = []
    @session = session
  end
end
