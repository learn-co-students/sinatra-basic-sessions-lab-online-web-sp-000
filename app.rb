require_relative 'config/environment'

class App < Sinatra::Base

  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  get '/' do
    @session = session

    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session

    erb :display
  end

end