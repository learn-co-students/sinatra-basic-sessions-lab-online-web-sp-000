require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    set :sessions, true
    set :session_secret, SecureRandom.hex(64)
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session[:item] = session

    erb :checkout
  end
end
