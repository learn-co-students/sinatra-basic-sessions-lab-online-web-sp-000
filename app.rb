require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "not_a_secret"
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    session.name = "name"
    @session = session
    params[:item]

  end

end
