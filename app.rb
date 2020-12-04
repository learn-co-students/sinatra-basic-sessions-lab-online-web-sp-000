require_relative 'config/environment'

class App < Sinatra::Base
    enable :sessions
    set :session_secret, SecureRandom.hex(64)

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end
end
