require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :index
    end

    configure do
        enable :sessions
        set :session_secret, "secret"
      end

    post '/checkout' do 
        session["item"] = "socks"
        @session = session
    end
end